module EvenOrOdd where

evenOrOdd :: Integral a => a -> String
evenOrOdd n = if n `mod` 2 == 0 then "Even" else "Odd"