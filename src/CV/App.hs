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
import           Text.Sass
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
                      , sassFunctions    = Just $ getBreakpoint
                                                : renderSassUrl
                                                : concat (sassFunctions def)
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
            "img/photo_square.jpg"
            [ "/css/normalize.css"
            , "/css/grid.css"
            , "/css/font.css"
            , "/css/main.css"
            ]
            (cvPage conf cv)


getBreakpoint :: SassFunction
getBreakpoint= SassFunction "get-breakpoint()" . const . return $
    SassNumber 640 "px"
    -- case v of
    --   SassList [SassString l] _ -> SassString $ "url(\"" ++ l ++ "\")"
    --   _            -> v

renderSassUrl :: SassFunction
renderSassUrl = SassFunction "render-url($x)" $ \v -> return $
    case v of
      SassList [SassString l] _ -> SassString $ "url(\"" ++ l ++ "\")"
      _            -> v
