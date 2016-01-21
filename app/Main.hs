{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

data Binary = Bin Binary Binary | Tip
  deriving Show

encode :: Binary -> [Bool]
encode (Bin l r) = True : (encode l) ++ (encode r)
encode Tip = [False]

rank :: [Bool] -> Int -> Int
rank _ 0 = 0
rank (True:xs) i = 1 + (rank xs (i - 1))
rank (False:xs) i = (rank xs (i - 1))
rank [] _ = 0

main :: IO ()
main = return ()
