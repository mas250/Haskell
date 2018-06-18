contains :: [String]-> String -> Bool
contains [] word = False

contains (head:tail) word
 = head == word || contains tail word
   

set :: [String] -> Bool
set [] = True

set (head:tail) 
 =  not (contains tail head) && set tail 
   
main:: IO ()
main = putStrLn (show(set["TO","BE","OR", "NOT"]))
