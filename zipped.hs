zipped :: ([a],[b]) -> [(a,b)]
zipped ((x:xs), (y:ys)) 
   = (x,y):zipped (xs, ys)

zipped([],(y: ys)) = []
zipped((x: xs),[]) = []
zipped([],[]) = []

main = putStrLn (show(zipped([2,7,5,7], ["a","b","c","d"])))