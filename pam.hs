pam :: [a -> b] -> a -> [b]

pam [] t 
	= []
	
pam (f:fs) t
	= f t : pam fs t
	
main = 
	putStrLn(show(pam [length, head, last] [8,9,10]))
	
