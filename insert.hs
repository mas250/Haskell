insert ::Int -> [Int] ->[Int]
insert e [] = [e]
insert e (head:tail)
   | e > head =  head:insert e tail
   | otherwise = e : head: tail
main ::IO ()
main = putStrLn (show(insert 4[2,3,4,5,8]))