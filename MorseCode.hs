module MorseCode where

import Data.Map.Strict (fromList, (!))
import Data.Char (isSpace)

morseCodes = fromList([
    ("....","H")
    , (".","E")
    , ("-.--","Y")
    , (".---","J")
    , ("..-", "U")
    , ("-..", "D")])

trim :: String -> String
trim = f . f
   where f = reverse . dropWhile isSpace

removeExcessWhitespace :: String -> Bool -> String
removeExcessWhitespace [] _ = []
removeExcessWhitespace [fst] _ = if fst == ' ' then "" else [fst]
removeExcessWhitespace (fst:snd:rest) isLongSpace
    | fst == ' ' && snd == ' ' && isLongSpace = removeExcessWhitespace rest isLongSpace
    | fst == ' ' && snd == ' ' = ' ' : '|' : ' ': removeExcessWhitespace rest True
    | otherwise = fst : removeExcessWhitespace (snd:rest) False


decodeMorse :: String -> String
decodeMorse str = 
    let
        trimmed = trim str
        morseWithoutWhitespace = removeExcessWhitespace str False
        codes = words morseWithoutWhitespace
    in
        trim $ foldl (\acc code -> if code == "|" then acc ++ " " else acc ++ (morseCodes ! code)) "" codes

--morseCodes ! ".--"