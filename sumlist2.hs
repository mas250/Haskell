sumlist2 :: [int] -> int

sumlist2 xs
	= foldr (+) 0 xs
	
main = 
	putStrLn(show(sumlist2 [[1,2]]))