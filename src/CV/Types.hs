{-# LANGUAGE DeriveFoldable    #-}
{-# LANGUAGE DeriveFunctor     #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE OverloadedStrings #-}

module CV.Types (
    Config(..)
  -- * CV
  , CVPage(..)
  , CVSection(..)
  , CVLine(..)
  , CVEntry(..)
  ) where

import           Data.Text (Text)
import qualified Dhall     as D

data Config = Config
    { confHostBase :: String
    , confGA       :: Maybe (Text, Text)
    }


-- CV

data CVPage a = CVPage
    { cvpTitle    :: Text
    , cvpSubtitle :: Maybe Text
    , cvpLinks    :: a
    , cvpSections :: [CVSection a]
    }
  deriving (Functor, Foldable, Traversable)

data CVSection a = CVSection
    { cvsTitle    :: Maybe Text
    , cvsContents :: [(Maybe Text, CVLine a)]
    }
  deriving (Functor, Foldable, Traversable)

data CVLine a = CVLSimple a
              | CVLEntry  (CVEntry a)
  deriving (Functor, Foldable, Traversable)

data CVEntry a = CVEntry
    { cveTitle       :: Maybe Text
    , cveInstitution :: Maybe Text
    , cveLocation    :: Maybe Text
    , cveGrade       :: Maybe Text
    , cveBody        :: Maybe a
    }
  deriving (Functor, Foldable, Traversable)
    

instance D.Interpret a => D.Interpret (CVPage a) where
    autoWith o = D.record $
      CVPage <$> D.field "title"    D.strictText
             <*> D.field "subtitle" (D.maybe D.strictText)
             <*> D.field "links"    (D.autoWith o)
             <*> D.field "sections" (D.list (D.autoWith o))

instance D.Interpret a => D.Interpret (CVSection a) where
    autoWith o = D.record $
        CVSection <$> D.field "title" (D.maybe D.strictText)
                  <*> D.field "contents" (D.list sections)
      where
        sections = D.record $
          (,) <$> D.field "desc" (D.maybe D.strictText)
              <*> D.field "body" (D.autoWith o)

instance D.Interpret a => D.Interpret (CVLine a) where
    autoWith o = D.union $
        ( CVLSimple <$> D.constructor "Simple" (D.autoWith o) )
     <> ( CVLEntry  <$> D.constructor "Entry"  (D.autoWith o) )

instance D.Interpret a => D.Interpret (CVEntry a) where
    autoWith o = D.record $
      CVEntry <$> D.field "title"       (D.maybe D.strictText)
              <*> D.field "institution" (D.maybe D.strictText)
              <*> D.field "location"    (D.maybe D.strictText)
              <*> D.field "grade"       (D.maybe D.strictText)
              <*> D.field "body"        (D.maybe (D.autoWith o))
