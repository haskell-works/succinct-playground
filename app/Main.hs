{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

data Binary = Bin Binary Binary | Tip
  deriving Show

encode :: Binary -> [Bool]
encode (Bin l r) = True : (encode l) ++ (encode r)
encode Tip = [False]

main :: IO ()
main = return ()
