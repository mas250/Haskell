applist:: [a]->[a]-> [a]
applist [] ys 
	= ys
applist (x:xs) ys 
	= x:applist xs ys


concatlist :: [[a]] -> [a]


concatlist xs =
	foldr applist [] xs 
	
main = 
	putStrLn(show(concatlist [[1,2],[3],[4]]))