module Main where

import MorseCode (decodeMorse, removeExcessWhitespace)

main :: IO ()
main =
    let 
        x1 = decodeMorse ".... . -.--   .--- ..- -.. ." -- == "HEY JUDE"
        -- x2 = removeExcessWhitespace "HELLO          THERE" -- = "HELLO THERE"
        -- x3 = removeExcessWhitespace "HELLO      THERE      MONKEY"-- == "HELLO THERE MONKEY"
        -- x4 = removeExcessWhitespace "     HELLO      THERE      MONKEY"-- == "HELLO THERE MONKEY"
        -- x5 = removeExcessWhitespace "   HELLO      THERE      MONKEY   "-- == "HELLO THERE MONKEY"
        -- x6 = removeExcessWhitespace "HELLO"-- == "HELLO"
        -- x7 = removeExcessWhitespace "HELLO   "-- == "HELLO "
        -- x8 = removeExcessWhitespace "HELLO  "-- == "HELLO "
        -- x9 = removeExcessWhitespace "HELLO "-- == "HELLO "
    in
        --print [x2 , x3 , x4 , x5 , x6 , x7 , x8 , x9]
        print x1

