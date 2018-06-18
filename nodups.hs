contains :: [Int]-> Int -> Bool
contains [] word = False

contains (head:tail) word
 = head == word || contains tail word
   

nodups :: [Int] -> Bool
nodups [] = True

nodups (head:tail) 
 =  not (contains tail head) && nodups tail 
   
main:: IO ()
main = putStrLn (show(nodups[2,7,5,7]))
