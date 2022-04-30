{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE ImplicitParams    #-}
{-# LANGUAGE MultiWayIf        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

import           CV.App
import           Hakyll
import qualified Dhall  as D

main :: IO ()
main = hakyll . app =<< D.input D.auto "./config/site-info.dhall"
