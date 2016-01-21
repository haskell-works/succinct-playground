{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

data Binary = Bin Binary Binary | Tip
  deriving Show

main :: IO ()
main = return ()
