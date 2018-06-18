average:: [Int] -> [Int]
average xs
	= top 'div' bottom
	where
	top = sum xs
	bottom = length xs

main ::IO ()
main = putStrLn (show(average[5,10,7,2]))