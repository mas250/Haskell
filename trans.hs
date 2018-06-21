trans :: [[a]] -> [[a]]

trans([]:xss)
	= []
trans xss 
	= map head xss :
		trans (map tail xss)

	
main = 
	putStrLn(show(trans [[1,2,3],[4,5,6],[7,8,9]]))