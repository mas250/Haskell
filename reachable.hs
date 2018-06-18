data Node = Node  Char [Node] deriving Show

nodeA :: Node
nodeA
 = Node 'A' [nodeC,nodeD]
nodeB :: Node 
nodeB 
 = Node 'B' [nodeA]
nodeC :: Node
nodeC
 = Node 'C' [nodeE,nodeF]
nodeD :: Node
nodeD
  = Node 'D'[]
nodeE :: Node 
nodeE
 = Node 'E' [nodeB]
nodeF :: Node 
nodeF
 = Node 'F' [nodeI]
nodeG :: Node
nodeG
 = Node 'G' [ nodeH ]
nodeH :: Node
nodeH
 = Node 'H' [ ]
nodeI :: Node
nodeI
 = Node 'I' [ nodeG ]

isList :: [Bool] -> Bool
isList a
 = True `elem` a

reachable2 :: [Char] -> Node -> Node -> Bool
reachable2 a (Node head tail) (Node head2 tail2)
  | head == head2 = True
  | head `elem` a = False 
  | otherwise  = isList((map (\(Node x xs) -> reachable2 (head:a) (Node x xs) (Node head2 tail2)) tail))

reachable :: Node -> Node -> Bool
reachable =
 reachable2 [] 

main
 = print(reachable nodeA nodeH)


