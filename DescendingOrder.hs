module DescendingOrder where

import Data.List
import Data.Ord
-- Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

descendingOrder :: Integer -> Integer
descendingOrder = read . sortOn Down . show