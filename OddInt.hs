module OddInt where

-- | Given a list, find the [Int] that appears an 
--   odd number of times. The tests will always
--   provide such a number, and the list will
--   always contain at least one element.

import Data.List

countOccurance :: [Int] -> Int -> Int
countOccurance xs number = foldl (\acc x -> if x == number then acc + 1 else acc) 0 xs

getOccuranceList :: [Int] -> [Int]
getOccuranceList xs = map (countOccurance xs) xs

findOdd :: [Int] -> Int
findOdd xs = 
    let
        maybeIndex = findIndex odd (getOccuranceList xs)
    in
        case maybeIndex of
            Just index -> xs !! index
            Nothing -> 0
