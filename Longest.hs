module Longest where

import Data.List

getDistinct :: String -> String -> String
getDistinct [] acc = acc
getDistinct xs acc = 
    let x = head xs
        inAcc = x `elem` acc
    in
        if inAcc then getDistinct (tail xs) acc else getDistinct (tail xs) (acc ++ [x])

longest :: String -> String -> String
longest s1 s2 =
    let 
        distinctS1 = getDistinct s1 ""
        distinctS2 = getDistinct s2 ""
        lengthS1 = length distinctS1
        lengthS2 = length distinctS2
    in
        if lengthS1 > lengthS2 then sort distinctS1 else sort distinctS2