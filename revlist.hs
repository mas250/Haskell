applist :: [a]->[a]->[a]
applist [] ys 
	= ys
applist (x:xs) ys 
	= x:applist xs ys

revlist :: [a]->[a]
revlist [] 
	= []

revlist (x:xs)
	= applist (revlist xs) [x]

main = 
	putStrLn(show(revlist [8,2,6,4,1]))