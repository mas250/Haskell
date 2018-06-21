part :: Ord a=> a -> [a] ->( [a],[a] )
part p xs
	=(filter (less p) xs, 
	  filter (more p) xs)
less :: Ord a => a -> a -> Bool
less a b
	= a > b
more :: Ord a => a -> a -> Bool
more a b 
	= not ( less a b )
	
main = 
	putStrLn(show(part 6+ [7,2,4,1,6,5,8,0,3,9]))
	

qsort :: Ord a => [a] -> [a]
qsort []
	=[]
qsort (x:xs)
	= qsort | ++ [x] ++ qsort r
	
	where (i,r) = part x xs
	
	
