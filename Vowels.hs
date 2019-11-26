module Vowels where

getCount :: String -> Int
getCount = foldl(\acc char -> if char `elem` "aeiou" then acc+1 else acc) 0