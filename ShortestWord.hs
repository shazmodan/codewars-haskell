module ShortestWord where

    --Simple, given a string of words, return the length of the shortest word(s).
find_shortest :: String -> Integer
find_shortest = toInteger . minimum . map length . words