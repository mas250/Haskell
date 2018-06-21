applist:: [a]->[a]-> [a]
applist [] ys 
	= ys
applist (x:xs) ys 
	= x:applist xs ys


main = 
	putStrLn(show(applist [6,2,4] [8,2,9,1]))
