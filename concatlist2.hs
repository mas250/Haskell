applist:: [a]->[a]-> [a]
applist [] ys 
	= ys
applist (x:xs) ys 
	= x:applist xs ys

concatlist2 :: [[a]] -> [a]
concatlist2 []
	= []
concatlist2 (xs:xss)
	= applist xs (concatlist2 xss)
	
main = 
	putStrLn(show(concatlist2 [[1,2],[3],[4]]))