{-# LANGUAGE LambdaCase        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

module CV.View (
  ) where

import           Data.Default
import           Data.Foldable
import           Data.Text                   (Text)
import           Text.Blaze.Html5            ((!))
import qualified Data.Text                   as T
import qualified Text.Blaze.Html5            as H
import qualified Text.Blaze.Html5.Attributes as A
import qualified Text.Pandoc                 as P

data CVPage a = CVPage
    { cvpTitle    :: Text
    , cvpSubtitle :: Maybe Text
    , cvpLinks    :: a
    , cvpSections :: [CVSection a]
    }

data CVSection a = CVSection
    { cvsTitle    :: Maybe Text
    , cvsContents :: [(Maybe Text, CVLine a)]
    }

data CVLine a = CVLSimple a
              | CVLEntry  (CVEntry a)

data CVEntry a = CVEntry
    { cveTitle       :: Maybe Text
    , cveInstitution :: Maybe Text
    , cveLocation    :: Maybe Text
    , cveGrade       :: Maybe Text
    , cveBody        :: a
    }

cvPage :: CVPage H.Html -> H.Html
cvPage CVPage{..} = do
    H.header $ do
      H.h1 $ H.toHtml cvpTitle
      H.div ! A.class_ "subtitle" $
        mapM_ H.toHtml cvpSubtitle
      H.div ! A.class_ "links" $
        cvpLinks
    H.div ! A.class_ "cvpage" $ do
      mapM_ cvSection cvpSections
    
cvSection
    :: CVSection H.Html
    -> H.Html
cvSection CVSection{..} = H.div ! A.class_ "cvsection" $ do
    H.div ! A.class_ "grid__col grid__col-1-of-6 cvsection-pretitle" $ pure ()
    H.div ! A.class_ "grid__col grid__col-5-of-6 cvsection-title" $
      mapM_ H.toHtml cvsTitle
    H.div ! A.class_ "cvsection-contents" $
      mapM_ (uncurry cvContents) cvsContents

cvContents
    :: Maybe Text
    -> CVLine H.Html
    -> H.Html
cvContents desc body = H.div ! A.class_ "cvline" $ do
    H.div ! A.class_ "grid__col grid__col--1-of-6 cvline-desc" $
      mapM_ H.toMarkup desc
    H.div ! A.class_ "grid__col grid__col--1-of-6 cvline-body" $
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
      mapM_ ((H.span ! A.class_ "cventry-grade") . H.toMarkup) cveLocation
    H.div ! A.class_ "cventry-body" $
      cveBody

copyToHtml :: P.Pandoc -> H.Html
copyToHtml = either (error . show) id
           . P.runPure
           . P.writeHtml5 def
