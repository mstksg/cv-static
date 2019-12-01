
module CV.Types (
    Config(..)
  ) where

import           Data.Text                    (Text)

data Config = Config
    { confHostBase :: Text
    }

