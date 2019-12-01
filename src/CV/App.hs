{-# LANGUAGE ImplicitParams    #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeApplications  #-}

module CV.App (
    app
  ) where

import           CV.Render
import           CV.Types
import           CV.View
import           Data.Default
import           Dhall.TypeCheck
import           Hakyll
import           Hakyll.Web.Dhall
import           Hakyll.Web.Sass
import           System.FilePath
import qualified Data.Text                       as T
import qualified Dhall                           as D
import qualified Text.Blaze.Html.Renderer.String as H

app :: Config
    -> Rules ()
app conf@Config{..} = do
    match "static/**" $ do
      route   $ gsubRoute "static/" (const "")
      compile copyFileCompiler

    create ["CNAME"] $ do
      route idRoute
      compile . makeItem $ confHostBase <> "\n"

    match "css/**" $ do
      route   idRoute
      compile compressCssCompiler

    match "scss/**" $ do
      route   $ gsubRoute "scss" (const "css")
      compile $ sassCompilerWith
                  def { sassIncludePaths = Just ["scss"]
                      -- , sassFunctions    = Just $ renderSassUrl : concat (sassFunctions def)
                      , sassFunctions    = Just $ concat (sassFunctions def)
                      }

    match "config/**.dhall" $ do
      route idRoute
      compile $ dExprCompiler @X

    match "dhall/**.dhall" $ do
      route idRoute
      compile $ dExprCompiler @X

    create ["index.html"] $ do
      route idRoute
      compile $ do
        cv <- fmap copyToHtml . itemBody <$> loadDhall D.auto "dhall/cv.dhall"

        makeItem . H.renderHtml $
          renderPage
            conf
            "Justin Le"
            "Curriculum Vitae of Justin A. Le"
            ["/css/grid.css", "/css/font.css"]
            (cvPage cv)


-- renderPage
--     :: FieldRec SiteInfo
--     -> Text         -- ^ Title
--     -> Text         -- ^ Description
--     -> [Text]       -- ^ CSS links
--     -> H.Html       -- ^ Body
--     -> H.Html

        -- home1 <- itemBody <$> loadSnapshot "home/1.html" "index"
        -- makeItem (home1 :: String)

-- archiveCompiler
--     :: (?config :: Config)
--     => ArchiveData Identifier
--     -> Compiler (Item String)
-- archiveCompiler ad = do
--     ad'     <- traverse ((compileTE =<<) . flip loadSnapshotBody "entry") ad
--     recents <- getRecentEntries
--     let title = T.pack (archiveTitle ad')
--         ai    = AI ad' recents
--         pd    = def { pageDataTitle = Just title
--                     , pageDataCss   = ["/css/page/archive.css"]
--                     , pageDataJs    = ["/js/disqus_count.js"]
--                     }
--     blazeCompiler pd (viewArchive ai)

