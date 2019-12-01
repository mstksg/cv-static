#!/usr/bin/env stack
-- stack --install-ghc runghc --package shake --package jle-utils

import           Development.Shake
import           Development.Shake.FilePath
import           JUtils.GHPages

opts = shakeOptions { shakeFiles     = "_build"
                    , shakeVersion   = "1.0"
                    , shakeVerbosity = Loud
                    , shakeThreads   = 0
                    }

main :: IO ()
main = shakeArgs opts $ do
    want ["build"]

    "build" ~> do
      unit $ cmd "stack run -- cv-static" "build"
      liftIO $ updatePages "_site" Nothing Nothing

    "rebuild" ~> do
      unit $ cmd "stack run -- cv-static" "rebuild"
      liftIO $ updatePages "_site" Nothing Nothing

    "clean" ~> do
      removeFilesAfter "_build" ["//*"]
      unit $ cmd "stack run -- cv-static" "clean"
