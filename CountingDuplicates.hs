module CountingDuplicates where 

import Data.Char
import Data.List

duplicateCount :: String -> Int
duplicateCount = foldl(\acc curr -> if length curr > 1 then acc+1 else acc) 0 
    . group 
    . sort 
    . map toLower