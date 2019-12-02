module Main where

import DescendingOrder (descendingOrder)

main :: IO ()
main =
    let 
        x1 = descendingOrder 1021
    in
        print x1