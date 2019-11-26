module Multiples where


isMultipleOf3Or5 :: Integer -> Bool
isMultipleOf3Or5 number = mod number 3 == 0 || mod number 5 == 0


sumMultipleList :: Integer -> Integer
sumMultipleList number = sum $ filter isMultipleOf3Or5 [1 .. number - 1]
