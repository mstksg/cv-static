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
import           Text.Blaze.Html5            ((!))
import qualified Data.Text                   as T
import qualified Language.Haskell.Printf     as P
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A

renderPage
    :: Config
    -> Text         -- ^ Title
    -> Text         -- ^ Description
    -> [Text]       -- ^ CSS links
    -> H.Html       -- ^ Body
    -> H.Html
renderPage Config{..} title desc css body = H.docTypeHtml $ do
    H.head $ do
      H.title $ H.toHtml title
      H.meta ! A.name "description" ! A.content (H.textValue desc)

      H.meta ! A.httpEquiv "Content-Type" ! A.content "text/html;charset=utf-8"
      H.meta ! A.name "viewport" ! A.content "width=device-width,initial-scale=1.0"

      H.link
        ! A.href (H.textValue "/favicon.ico")
        ! A.rel "shortcut icon"

      forM_ css $ \u ->
        H.link ! A.href (H.textValue u) ! A.rel "stylesheet" ! A.type_ "text/css"

      mapM_ googleAnalyticsJs confGA

    H.body $
      H.div ! A.id "body-container" ! A.class_ "container" $
        H.div ! A.id "main-container" ! A.class_ "grid" $
          body

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

