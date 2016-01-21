{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ViewPatterns      #-}
{-# LANGUAGE ScopedTypeVariables #-}

module Main where

data Binary = Bin Binary Binary | Tip
  deriving Show

louds :: Binary -> [Bool]
louds binary = True : encode binary
  where
    encode :: Binary -> [Bool]
    encode (Bin l r) = True : (encode l) ++ (encode r)
    encode Tip = [False]

rank :: Eq a => a -> [a] -> Int -> Int
rank _ _      0           = 0
rank a (x:xs) i | a == x  = 1 + (rank a xs (i - 1))
rank a (_:xs) i           = 0 + (rank a xs (i - 1))
rank _ []     _           = 0

select :: Eq a => a -> [a] -> Int -> Int
select _ _      0          = -1
select a (x:xs) i | a == x = 1 + (select a xs (i - 1))
select a (_:xs) i          = 1 + (select a xs (i - 0))
select _ []     _          = 0

-- Jacobson encoding

main :: IO ()
main = return ()
