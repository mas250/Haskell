

import Data.List
import Data.Map (Map, fromList, member, keys, (!))
import Text.Printf

puzzle =[['I','U','P','G','R','A','D','E','E','P','E','Q'],
 ['Y','T','D','Z','M','T','Z','V','N','R','X','S'],
 ['Y','V','C','E','C','T','I','W','A','L','Z','R'],
 ['P','C','P','G','E','R','S','W','G','C','R','E'],
 ['P','G','L','U','D','V','D','U','C','F','N','S'],
 ['O','N','T','D','J','R','R','W','D','F','O','Y'],
 ['L','V','R','G','A','X','A','I','Y','F','K','Z'],
 ['F','A','U','H','B','G','S','X','T','E','L','I'],
 ['H','E','G','S','P','K','H','W','Y','P','O','C'],
 ['T','E','S','Z','E','B','A','B','I','D','K','Y'],
 ['N','Z','W','T','U','R','O','H','O','I','P','K'],
 ['M','X','T','G','E','A','D','G','A','V','L','U'],
 ['T','E','S','S','R','M','E','M','O','R','Y','O'],
 ['D','I','Q','D','T','R','O','M','T','K','S','L'],
 ['I','R','C','T','L','A','P','T','O','P','O','X']]




dirs :: [(String, (Int, Int) -> (Int, Int))]
dirs = zip [“down right”, “up right”, “right”, “down left”,
“up left”, “left”, “down”, “up”] $
[\(x,y) -> (x+h, y+v) | h < - [1,-1,0], v <- [1,-1,0]] toGrid :: [[a]] -> Map (Int, Int) a
toGrid = fromList . concat .
zipWith (\y -> zipWith (\x c -> ((x,y), c)) [1..]) [1..]

found :: (Eq a, Ord k) => k -> (k -> k) -> Map k a -> [a] -> Bool
found pos dir g w = isPrefixOf w . map (g !) .
takeWhile (flip member g) $ iterate dir pos

findWord :: Map (Int, Int) Char -> String -> String
findWord g w = head [printf “%s row %d column %d %s” w y x ds |
(x,y) <- keys g, (ds, dir) <- dirs, found (x,y) dir g w] puzzle :: [String] puzzle = ["FYYHNRD", "RLJCINU", "AAWAAHR", "NTKLPNE", "CILFSAP", "EOGOTPN", "HPOLAND"] main :: IO () main = mapM_ (putStrLn . findWord (toGrid puzzle)) $ words "ITALY HOLLAND POLAND SPAIN FRANCE JAPAN TOGO PERU" [/sourcecode]