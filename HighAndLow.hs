module HighAndLow where

highAndLow :: String -> String
highAndLow input = show max ++ " " ++ show min
    where 
        numberList = map (\x -> read x :: Int) $ words input
        max = maximum numberList
        min = minimum numberList