module EqualSidesOfArray where


findIndex :: [Int] -> Int -> Int -> Int
findIndex [] _ _ = -1
findIndex lst index leftSum
    | leftSum == sum (tail lst) = index
    | otherwise = findIndex (tail lst) (index+1) (leftSum + head lst)

findEvenIndex :: [Int] -> Int
findEvenIndex lst = findIndex lst 0 0