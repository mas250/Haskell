

mkset :: [string] -> [string]
mkset xs
	= mkset1 [] xs

mkset1:: [string] -> [string] -> [string]
mkset1 acc []
	=acc
mkset1 acc (x:xs)
	| elem x acc = mkset1 acc xs
	| otherwise = mkset1 (acc+[x])
main = 
	putStrLn(show(mkset [ "a", "a", "a", "b"]))