{-# LANGUAGE OverloadedLabels  #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes       #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeInType        #-}
{-# LANGUAGE TypeOperators     #-}

module CV.Render (
    renderPage
  ) where

import           CV.Types
import           Data.Foldable
import           Data.Text                   (Text)
import           System.FilePath
import           Text.Blaze.Html5            ((!))
import qualified Data.Text                   as T
import qualified Language.Haskell.Printf     as P
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A

renderPage
    :: Config
    -> String       -- ^ Image URL
    -> [Text]       -- ^ CSS links
    -> H.Html       -- ^ Body
    -> H.Html
renderPage Config{..} img css body = H.docTypeHtml $ do
    H.head $ do

      mapM_ googleAnalyticsJs confGA

      H.title $ H.toHtml confName
      H.meta ! A.name "description" ! A.content (H.textValue confDesc)

      H.meta ! A.httpEquiv "Content-Type" ! A.content "text/html;charset=utf-8"
      H.meta ! A.name "viewport" ! A.content "width=device-width,initial-scale=1.0"

      viewOpenGraphMetas

      H.link
        ! A.href (H.textValue "/favicon.ico")
        ! A.rel "shortcut icon"

      forM_ css $ \u ->
        H.link ! A.href (H.textValue u) ! A.rel "stylesheet" ! A.type_ "text/css"

    H.body $
      H.div ! A.id "body-container" ! A.class_ "container" $
        H.div ! A.id "main-container" ! A.class_ "grid" $
          body
  where
    img' = T.pack $ confHostBase </> img
    viewOpenGraphMetas = do
        H.meta
          ! H.customAttribute "property" "og:site_name"
          ! A.content (H.textValue confName)
        H.meta
          ! H.customAttribute "property" "og:description"
          ! A.content (H.textValue confDesc)
        H.meta
          ! H.customAttribute "property" "og:type"
          ! A.content "website"
        H.meta
          ! H.customAttribute "property" "og:title"
          ! A.content (H.textValue confName)
        H.meta
          ! H.customAttribute "property" "og:image"
          ! A.content (H.textValue img')
        H.meta
          ! H.customAttribute "property" "og:locale"
          ! A.content "en_US"
        H.meta
          ! H.customAttribute "property" "og:url"
          ! A.content (H.textValue (T.pack confHostBase))
    
        H.meta
          ! A.name "twitter:card"
          ! A.content "summary"
        H.meta
          ! A.name "twitter:title"
          ! A.content (H.textValue confName)
        H.meta
          ! A.name "twitter:description"
          ! A.content (H.textValue confDesc)
        H.meta
          ! A.name "twitter:image"
          ! A.content (H.textValue img')
        forM_ confTwitter $ \t -> do
          H.meta
            ! A.name "twitter:site"
            ! A.content (H.textValue (T.pack t))
          H.meta
            ! A.name "twitter:creator"
            ! A.content (H.textValue (T.pack t))

googleAnalyticsJs :: String -> H.Html
googleAnalyticsJs aId = do
    H.script ! A.async "" ! A.src (H.textValue scriptLink) $ pure ()
    H.script $
      H.toHtml $
        T.unlines
          [ "  window.dataLayer = window.dataLayer || [];"
          , "  function gtag(){dataLayer.push(arguments);}"
          , "  gtag('js', new Date());"
          , ""
          , T.pack $ [P.s|  gtag('config', '%s');|] aId
          ]
  where
    scriptLink = T.pack $
      [P.s|https://www.googletagmanager.com/gtag/js?id=%s|] aId
