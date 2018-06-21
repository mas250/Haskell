concatlist3 :: [[a]] -> [a]


concatlist3 xs =
	foldr (++) [] xs 
	
main = 
	putStrLn(show(concatlist3 [[1,2],[3],[4]]))