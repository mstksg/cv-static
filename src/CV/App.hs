{-# LANGUAGE ImplicitParams    #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeApplications  #-}

module CV.App (
    app
  ) where

-- import           Blog.Compiler
-- import           Blog.Rule.Archive
-- import           Blog.Types
-- import           Blog.Util
-- import           Blog.Util.Sass
-- import           Blog.Util.Tag
-- import           Blog.View
-- import           Blog.View.Feed
-- import           Control.Monad
-- import           Control.Monad.Trans.Maybe
-- import           Data.Default
-- import           Data.Foldable
-- import           Data.List
-- import           Data.Maybe
-- import           Data.Monoid
-- import           Data.Ord
-- import           Data.Time.LocalTime
-- import           System.FilePath
-- import           Text.Jasmine
-- import           Text.Read                 (readMaybe)
-- import qualified Data.Map                  as M
-- import qualified Data.Text.Lazy            as TL
-- import qualified Data.Text.Lazy.Encoding   as TL

import           CV.Types
import           Data.Default
import           Data.Text        (Text)
import           Dhall.TypeCheck
import           Hakyll
import           Hakyll.Web.Dhall
import           Hakyll.Web.Sass
import qualified Data.Text        as T

app :: Config
    -> Rules ()
app Config{..} = do
    match "static/**" $ do
      route   $ gsubRoute "static/" (const "")
      compile copyFileCompiler

    create ["CNAME"] $ do
      route idRoute
      compile . makeItem . T.unpack $ confHostBase <> "\n"

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

-- renderSassUrl
--     :: (?config :: Config)
--     => SassFunction
-- renderSassUrl = SassFunction "render-url($x)" $ \v -> return $
--     case v of
--       SassList [SassString l] _ -> SassString $ "url(\"" ++ renderRootUrl' l ++ "\")"
--       _            -> v
