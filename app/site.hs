{-# LANGUAGE FlexibleContexts  #-}
{-# LANGUAGE ImplicitParams    #-}
{-# LANGUAGE MultiWayIf        #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}

import           CV.App
import           CV.Types
import           Hakyll

main :: IO ()
main = do
    -- PP.renderIO stdout
    --     . fmap annToAnsiStyle
    --     . PP.layoutSmart layoutOpts
    --     . prettyExpr
    --   =<< inputExpr configPath

    -- putStrLn ""

    hakyll $ app $ Config "https://cv.jle.im" Nothing
