module ParityOutlier where

import Data.List
import Data.Maybe

findOutlier :: [Int] -> Int
findOutlier xs
    | length (findIndices even xs) > 1 = fromJust $ find odd xs
    | length (findIndices even xs) == 1 = fromJust $ find even xs
    