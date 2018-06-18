import Data.List (transpose)

type Dictionary = [String]

englishDictionary :: Dictionary
englishDictionary
    = ["and", "ass", "bad", "cold", "or", "pie", "shoe", "wit" ]

contains :: [String]-> String -> Bool
contains [] word = False

contains (head:tail) word
 = head == word || contains tail word

chunk :: Int -> [a] -> [[a]]
chunk _ [] = []
chunk n xs = first : chunk n rest where (first, rest) = splitAt n xs

splitSkip :: Int -> [a] -> [[a]]
splitSkip n xs = transpose $ chunk n xs

alternade :: String -> [String] -> Bool
alternade [] englishDictionary
    = False
alternade head tail
    = and $map (contains tail) (splitSkip 2 head)

main :: IO ()
main = print $and $map (contains englishDictionary) (splitSkip 2 "pained")