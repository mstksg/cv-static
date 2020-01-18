{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

module CV.View (
    cvPage
  , copyToHtml
  ) where

import           CV.Types
import           Data.Default
import           Data.Foldable
import           Data.Text                   (Text)
import           System.FilePath
import           Text.Blaze.Html5            ((!))
import qualified Data.Text                   as T
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A
import qualified Text.Pandoc                 as P


cvPage :: Config -> CVPage H.Html -> H.Html
cvPage cfg CVPage{..} = do
    H.header ! A.class_ "grid__col grid__col--6-of-6" $ do
      H.h1 $ H.toHtml cvpTitle
      mapM_ (H.h2 . H.toHtml) cvpSubtitle
      H.div ! A.class_ "links" $
        cvpLinks
    H.div ! A.class_ "cvpage" $
      mapM_ (cvSection cfg) cvpSections

cvSection
    :: Config
    -> CVSection H.Html
    -> H.Html
cvSection Config{..} CVSection{..} = titler (H.div ! A.class_ "cvsection cvs-cols") $ do
    H.div ! A.class_ "grid__col grid__col--1-of-8 cvsection-pretitle" $
      forM_ titleName $ \t ->
        H.a ! A.href (H.textValue . T.pack $ confHostBase </> T.unpack ("#" <> t)) $
          "#"
    H.div ! A.class_ "grid__col grid__col--7-of-8 cvsection-title" $
      mapM_ (H.h3 . H.toHtml) cvsTitle
    H.div ! A.class_ "cvsection-contents" $
      mapM_ cvContents cvsContents
  where
    titleName = ("section-" <>) . snaker <$> cvsTitle
    titler = case titleName of
      Nothing -> id
      Just t  -> (! A.id (H.textValue t))

snaker :: Text -> Text
snaker = T.intercalate "-" . T.words . T.toLower

cvContents
    :: CVCol H.Html
    -> H.Html
cvContents CVCol{..} = H.div ! A.class_ "cvline" $ do
    H.div ! A.class_ "grid__col grid__col--1-of-8 cvline-desc" $
      mapM_ (H.h4 . H.toMarkup) cvcDesc
    H.div ! A.class_ "grid__col grid__col--7-of-8 cvline-body" $
      case cvcBody of
        CVLSimple x -> x
        CVLEntry  e -> cvEntry e

cvEntry
    :: CVEntry H.Html
    -> H.Html
cvEntry CVEntry{..} = do
    H.div ! A.class_ "cventry-heading" $ do
      H.span ! A.class_ "cventry-title" $
        H.toMarkup cveTitle
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
