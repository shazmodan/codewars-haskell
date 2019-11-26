module DirectionsReduction where

data Direction = North | East | West | South deriving (Eq, Show)

dirReduce :: [Direction] -> [Direction]
dirReduce [] = []
dirReduce [fst] = [fst]
dirReduce directions = 
    let
        (fst:rest) = directions
        snd = head rest
    in
        case (fst, snd) of
            (North, South) -> dirReduce rest
            (South, North) -> dirReduce rest
            (East, West) -> dirReduce rest
            (West, East) -> dirReduce rest
            _ -> fst : dirReduce rest
