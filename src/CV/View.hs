{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

module CV.View (
    cvPage
  , copyToHtml
  ) where

import           CV.Types
import           Data.Default
import           Data.Text                   (Text)
import           Text.Blaze.Html5            ((!))
import qualified Data.Text                   as T
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A
import qualified Text.Pandoc                 as P


cvPage :: CVPage H.Html -> H.Html
cvPage CVPage{..} = do
    H.header ! A.class_ "grid__col grid__col--6-of-6" $ do
      H.h1 $ H.toHtml cvpTitle
      mapM_ (H.h2 . H.toHtml) cvpSubtitle
      H.div ! A.class_ "links" $
        cvpLinks
    H.div ! A.class_ "cvpage" $
      mapM_ cvSection cvpSections

cvSection
    :: CVSection H.Html
    -> H.Html
cvSection CVSection{..} = titler (H.div ! A.class_ "cvsection") $ do
    H.div ! A.class_ "grid__col grid__col--1-of-6 cvsection-pretitle" $ pure ()
    H.div ! A.class_ "grid__col grid__col--5-of-6 cvsection-title" $
      mapM_ (H.h3 . H.toHtml) cvsTitle
    H.div ! A.class_ "cvsection-contents" $
      mapM_ (uncurry cvContents) cvsContents
  where
    titler = case cvsTitle of
      Nothing -> id
      Just t  -> (! A.id (H.textValue ("section-" <> snaker t)))

snaker :: Text -> Text
snaker = T.intercalate "-" . T.words . T.toLower

cvContents
    :: Maybe Text
    -> CVLine H.Html
    -> H.Html
cvContents desc body = H.div ! A.class_ "cvline" $ do
    H.div ! A.class_ "grid__col grid__col--1-of-6 cvline-desc" $
      mapM_ (H.h4 . H.toMarkup) desc
    H.div ! A.class_ "grid__col grid__col--5-of-6 cvline-body" $
      case body of
        CVLSimple x -> x
        CVLEntry  e -> cvEntry e

cvEntry
    :: CVEntry H.Html
    -> H.Html
cvEntry CVEntry{..} = do
    H.div ! A.class_ "cventry-heading" $ do
      mapM_ ((H.span ! A.class_ "cventry-title") . H.toMarkup) cveTitle
      mapM_ ((H.span ! A.class_ "cventry-institution") . H.toMarkup) cveInstitution
      mapM_ ((H.span ! A.class_ "cventry-location") . H.toMarkup) cveLocation
      mapM_ ((H.span ! A.class_ "cventry-grade") . H.toMarkup) cveGrade
    H.div ! A.class_ "cventry-body" $
      sequence_ cveBody

copyToHtml :: Text -> H.Html
copyToHtml txt = either (error . show) id . P.runPure $
    P.writeHtml5 def =<< P.readMarkdown ro txt
  where
    ro = def { P.readerExtensions = P.pandocExtensions }
