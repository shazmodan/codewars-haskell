module SquareEveryDigit where

import Data.List
import Data.Char

-- squareDigit :: Int -> Int
-- squareDigit number = read joinedStr
--     where joinedStr = intercalate "" $ map (show . (\ x -> digitToInt x * digitToInt x)) (show number)

squareDigit :: Int -> Int
squareDigit digit
    | digit == 0 = digit
    | digit < 0 = read $ "-" ++ (intercalate "" $ map (show . (\ x -> digitToInt x * digitToInt x)) (show $ abs digit))
    | otherwise = read joinedStr
        where joinedStr = intercalate "" $ map (show . (\ x -> digitToInt x * digitToInt x)) (show digit)
