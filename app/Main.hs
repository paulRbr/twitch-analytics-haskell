module Main where

import           TwitchParser         (extractViewerCount)

import qualified Data.ByteString.Lazy as B (getContents)

main :: IO ()
main = do
  json <- B.getContents
  print (extractViewerCount json)
