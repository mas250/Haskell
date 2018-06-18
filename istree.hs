data BinTree a
    = Empty
    | Node a (BinTree a) (BinTree a)
    deriving (Eq, Show)
---type Node 
	-- = [Node]
	-- | []
freeTree =   
    Node 'P'  
        (Node 'O'  
            (Node 'L'  
                (Node 'N' Empty Empty)  
                (Node 'T' Empty Empty)  
            )  
            (Node 'Y'  
                (Node 'S' Empty Empty)  
                (Node 'A' Empty Empty)  
            )  
        )  
        (Node 'L'  
            (Node 'W'  
                (Node 'C' Empty Empty)  
                (Node 'R' Empty Empty)  
            )  
            (Node 'A'  
                (Node 'A' Empty Empty)  
                (Node 'C' Empty Empty)  
            )  
        )


isElem :: (Eq a) => a -> BinTree a -> Bool
isElem a Empty = False
isElem a (Node c left right)
    | a == c    = True
    | otherwise = isElem a left || isElem a right



main :: IO ()
main
	= print (isElem ( (Node 'W') (Node 'P' (Node 'O') (Node 'L'))))

    