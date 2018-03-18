module Hanoi (
    hanoi,
) where

hanoi :: Int -> Char -> Char -> Char -> [String]
hanoi 0 _ _ _ = []
hanoi n x y z = 
    hanoi (n-1) x z y ++
    ["in: " ++ show n ++ " - move " ++ [x] ++ " -> " ++ [y]] ++
    hanoi (n-1) z y x
