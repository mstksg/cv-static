{-# LANGUAGE OverloadedLabels  #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
{-# LANGUAGE TypeInType        #-}
{-# LANGUAGE TypeOperators     #-}

module CV.Render (
    SiteInfo
  , renderPage
  ) where

import           Data.Default
import           Data.Foldable
import           Data.Text                   (Text)
import           Data.Vinyl
import           System.FilePath
import           Text.Blaze.Html5            ((!))
import qualified Data.Text                   as T
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A
import qualified Text.Pandoc                 as P

type SiteInfo = '[ "ga"      ::: (Text, Text)
                 , "baseUrl" ::: String
                 ]
              
renderPage
    :: FieldRec SiteInfo
    -> Text         -- ^ Title
    -> Text         -- ^ Description
    -> [Text]       -- ^ CSS links
    -> H.Html       -- ^ Body
    -> H.Html
renderPage siteInfo title desc css body = H.docTypeHtml $ do
    H.head $ do
      H.title $ H.toHtml title
      H.meta ! A.name "description" ! A.content (H.textValue desc)

      H.meta ! A.httpEquiv "Content-Type" ! A.content "text/html;charset=utf-8"
      H.meta ! A.name "viewport" ! A.content "width=device-width,initial-scale=1.0"

      H.link
        ! A.href (H.textValue (T.pack $ rvalf #baseUrl siteInfo </> "favicon.ico"))
        ! A.rel "shortcut icon"

      forM_ css $ \u ->
        H.link ! A.href (H.textValue u) ! A.rel "stylesheet" ! A.type_ "text/css"

      uncurry googleAnalyticsJs $ rvalf #ga siteInfo

    H.body $
      H.div ! A.id "body-container" ! A.class_ "container" $
        H.div ! A.id "main-container" ! A.class_ "grid" $
          body

googleAnalyticsJs :: Text -> Text -> H.Html
googleAnalyticsJs aId aDomain =
  H.script $
    H.toHtml $
      T.unlines
        [ "(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){"
        , "(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),"
        , "m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)"
        , "})(window,document,'script','//www.google-analytics.com/analytics.js','ga');"
        , "ga('create', '" <> aId <> "', '" <> aDomain <> "');"
        , "ga('send', 'pageview');" ]
