module Main where

import YourOrderPlease (yourOrderPlease)

main :: IO ()
main =
    let 
        x1 = yourOrderPlease "is2 Thi1s T4est 3a"
    in
        print x1 -- 1