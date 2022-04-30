#!/usr/bin/env stack
-- stack --install-ghc runghc --resolver lts-18 --package shake --package hsass

-- stack --install-ghc runghc --package shake --resolver lts-18
-- stack --install-ghc runghc --package shake --package jle-utils --

{-# LANGUAGE BlockArguments #-}

import Control.Exception
import Data.Foldable
import Development.Shake
import Development.Shake.FilePath
import qualified Text.Sass as Sass

opts = shakeOptions { shakeFiles     = "_build"
                    , shakeVersion   = "1.0"
                    , shakeVerbosity = Loud
                    , shakeThreads   = 0
                    }

siteDir :: FilePath
siteDir = "_site"

-- TODO:
-- * only build scss files on change
-- * push dhall server

main :: IO ()
main = shakeArgs opts $ do
    want ["build"]

    "build" ~> do
      need ["static", "scss", siteDir </> "index.html", siteDir </> "CNAME"]

    "deploy" ~> do
      need ["build"]
      cmd_ "jle-update-gh-pages _site"
      cmd_ "git push origin gh-pages"

    (siteDir </> "index.html") %> \fp -> do
        need . map ("dhall" </>) =<< getDirectoryFiles "dhall" ["//*"]
        putVerbose "Compiling static html file"
        cmd_ "dhall-text-shell"
            ["--argCmd", "pandoc -f markdown -t html"]
            ["--output",fp]
            ["--file", "dhall/render.dhall"]

    (siteDir </> "CNAME") %> \fp -> do
      need ["dhall/config.dhall"]
      cmd_ "dhall text"
          ["--output",fp]
          (Stdin "(./dhall/config.dhall).hostBase")

    "static" ~> do
      staticFiles <- getDirectoryFiles "static" ["//*"]
      for_ staticFiles \fp ->
        copyFileChanged ("static" </> fp) (siteDir </> fp)
    
    "scss" ~> do
      scssFiles <- getDirectoryFiles "scss" ["//*.scss"]
      for_ scssFiles \fp -> do
        let fromFile = "scss" </> fp
            toFile   = siteDir </> "css" </> fp -<.> "css"
        need [fromFile]
        putVerbose $ "Compiling sass from " <> fromFile <> " to " <> toFile
        res <- liftIO $ Sass.compileFile fromFile sassOpts
        case res of
          Left e  -> fail =<< liftIO (Sass.errorMessage e)
          Right r -> writeFileChanged toFile r

    "clean" ~> do
      removeFilesAfter "_build" ["//*"]
      removeFilesAfter "_site" ["//*"]

sassOpts = Sass.defaultSassOptions
    { Sass.sassIncludePaths = Just ["scss"]
    , Sass.sassFunctions    = Just $ getBreakpoint
                                   : renderSassUrl
                                   : concat (Sass.sassFunctions Sass.defaultSassOptions)
    }
  where
    getBreakpoint = Sass.SassFunction "get-breakpoint()" . const . return $
        Sass.SassNumber 640 "px"
    renderSassUrl = Sass.SassFunction "render-url($x)" $ \v -> return $
        case v of
          Sass.SassList [Sass.SassString l] _ -> Sass.SassString $ "url(\"" ++ l ++ "\")"
          _            -> v

