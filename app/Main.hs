module Main (main) where

import Hanoi
import Data.List (length)
import System.Environment

main :: IO ()
main = do
    n:_ <- getArgs
    let res = hanoi (read n) 'A' 'B' 'C'
    mapM_ putStrLn res
    putStrLn $ "step amount: " ++ show (length res)
