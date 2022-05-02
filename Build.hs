#!/usr/bin/env stack
-- stack --install-ghc runghc --resolver lts-19 --package shake --package hsass --package shake-dhall

{-# LANGUAGE BlockArguments #-}

import Control.Exception
import Control.Monad
import Data.Foldable
import Data.Traversable
import Development.Shake
import Development.Shake.Dhall
import Development.Shake.FilePath
import qualified Text.Sass as Sass

opts = shakeOptions { shakeFiles     = "_build"
                    , shakeVersion   = "1.0"
                    , shakeVerbosity = Loud
                    , shakeThreads   = 0
                    }

siteDir :: FilePath
siteDir = "_site"

main :: IO ()
main = shakeArgs opts $ do
    want [siteDir </> "index.html", siteDir </> "CNAME"]

    "deploy" ~> do
      cmd_ "jle-update-gh-pages _site"
      cmd_ "git push origin gh-pages"

    forward_ "static//*" (`replaceDirectory1` siteDir) $ \src dest ->
      copyFileChanged src dest

    forward_ "scss//*.scss" ((-<.> "css") . (siteDir </>) . (`replaceDirectory1` "css")) $ \src dest -> do
      putVerbose $ "Compiling sass from " <> src <> " to " <> dest
      res <- liftIO $ Sass.compileFile src sassOpts
      case res of
        Left e  -> fail =<< liftIO (Sass.errorMessage e)
        Right r -> writeFileChanged dest r

    forward_ "dhall//*.dhall" (siteDir </>) $ \src dest -> do
      putVerbose $ "Compiling dhall from " <> src <> " to " <> dest
      needDhall [src]
      Stdout sto <- cmd "dhall resolve" ["--file", src]
      Stdout str <- cmd "dhall normalize" (Stdin sto)
      writeFileChanged dest str

    (siteDir </> "index.html") %> \fp -> do
        needDhallCli ["dhall/render.dhall"]
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

forward :: FilePattern -> (FilePath -> FilePath) -> (FilePath -> FilePath -> Action ()) -> Rules [FilePath]
forward fp mkTarg act = do
    affectedFiles <- liftIO $ getDirectoryFilesIO "" [fp]
    for affectedFiles $ \afp -> do
      let targ = mkTarg afp
      action $ need [targ]
      targ %> \_ -> need [afp] *> act afp targ
      pure targ

forward_ :: FilePattern -> (FilePath -> FilePath) -> (FilePath -> FilePath -> Action ()) -> Rules ()
forward_ fp mkTarg = void . forward fp mkTarg
