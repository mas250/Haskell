insert ::Int -> [Int] ->[Int]
insert e [] = [e]
insert e (head:tail)
   | e > head =  head:insert e tail
   | otherwise = e : head: tail


sort :: [Int] -> [Int]
sort [] = []
sort (head:tail)
    = insert head(sort tail)
    
main ::IO ()
main = putStrLn (show(sort[7,5,9,8,4,6]))
