Data Dictionary
	= ["and", "ass", "bad", "cold", "or", "pie", "shoe", "wit" ]
--
contains :: [String]-> String -> Bool
contains [] word = False

contains (head:tail) word
 = head == word || contains tail word
--
alternade:: String -> Dictionary -> Bool
alternade [] = []
alternade (head:tail)	
    | contains Dictionary word


--main :: IO()
--main = putStrLn (show(alternade (Dictionary, "pained")))