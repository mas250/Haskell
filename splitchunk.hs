import Data.List (transpose)

chunk :: Int -> [a] -> [[a]]
chunk _ [] = []
chunk n xs = first : chunk n rest where (first, rest) = splitAt n xs

splitSkip :: Int -> [a] -> [[a]]
splitSkip n xs = transpose $ chunk n xs

main :: IO ()
main = print $ splitSkip 2 "pbannana"