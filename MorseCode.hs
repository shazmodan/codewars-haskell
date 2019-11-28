module MorseCode where

import Data.Map.Strict (fromList, (!))
import Data.List.Split

morseCodes = fromList([
    ("....","H")
    , (".","E")
    , ("-.--","Y")
    , (".---","J")
    , ("..-", "U")
    , ("-..", "D")])

removeExcessWhitespace :: String -> Bool -> String
removeExcessWhitespace [] _ = []
removeExcessWhitespace [fst] _ = if fst == ' ' then "" else [fst]
removeExcessWhitespace (fst:snd:rest) isLongSpace = 
    if fst == ' ' && snd == ' ' && isLongSpace then
        removeExcessWhitespace rest isLongSpace
    else if fst == ' ' && snd == ' '
        then  ' ' : '|' : removeExcessWhitespace rest True
    else fst : removeExcessWhitespace (snd : rest) False


decodeMorse :: String -> String
decodeMorse str = 
    let
        morseWithoutWhitespace = removeExcessWhitespace str False
        codes = splitOn " " morseWithoutWhitespace
    in
        foldl (\acc code -> if code == " " then acc else acc ++ (morseCodes ! code)) "" codes

--morseCodes ! ".--"