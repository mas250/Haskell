contains :: [String]-> String -> Bool
contains [] word = False

contains (head:tail) word
 = head == word || contains tail word
   
   
main:: IO ()
main = putStrLn (show(contains["TO","BE","OR", "NOT", "TO", "BE"]"THAT"))