module Main where

import CountingDuplicates (duplicateCount)

main :: IO ()
main =
    let 
        x1 = duplicateCount "Indivisibilities" 
    in
        print x1 -- 1