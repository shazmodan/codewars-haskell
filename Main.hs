module Main where

import EvenOrOdd

main :: IO ()
main =
    let 
        x1 = EvenOrOdd.evenOrOdd 2
    in
        print x1

