{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

data Binary = Bin Binary Binary | Tip
  deriving Show

encode :: Binary -> [Bool]
encode (Bin l r) = True : (encode l) ++ (encode r)
encode Tip = [False]

rank :: Eq a => a -> [a] -> Int -> Int
rank _ _      0 = 0
rank a (x:xs) i | a == x = 1 + (rank a xs (i - 1))
rank a (_:xs) i = (rank a xs (i - 1))
rank _ []     _ = 0

main :: IO ()
main = return ()
