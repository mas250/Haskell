insert ::String -> [String] -> [String]
insert e [] = [e]
insert e (head:tail)
    =  head:insert e tail
   
main ::IO ()
main = putStrLn (show(insert "dog"[]))