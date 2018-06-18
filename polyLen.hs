lenlist :: [a] -> Int
lenlist [] = 0

lenlist (head:tail) = 1 + lenlist tail
   
   
main:: IO ()
main = putStrLn (show(lenlist[1,2,5,'56']))