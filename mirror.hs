data Tree
    = Tip
    | Node Tree Int Tree
    	deriving Show

mirror :: Tree -> Tree
mirror Tip = Tip
mirror (Node tleft x tright) 
	=  Node (mirror tright) x (mirror tleft)

main :: IO ()
main
	= print (mirror (Node Tip 100(Node Tip 200 (Node Tip 70 Tip))))
