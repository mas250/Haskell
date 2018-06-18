data Node
    = Empty
    | Node Char [Node]
    deriving (Eq, Show)
---type Node 
    -- = [Node]
    -- | []


nodeG :: Node
nodeG
    = Node 'G' [ nodeH ]
nodeH :: Node
nodeH
    = Node 'H' [ ]
nodeI :: Node
nodeI
    = Node 'I' [ nodeG ]


insert ::Node -> [Node] -> [Node]
insert e [] = [e]
insert e (head:tail)
    =  head:insert e tail


contains :: [Node]-> Node -> Bool
contains [] node = False

contains (head:tail) node
 = head == node || contains tail node
   



reachable :: (Eq a) => a -> Node a -> Bool
reachable a Empty = False
reachable a (Node b x:xs)
    | (a == b)    = True
    | reachable2 a []
    | otherwise contains ( insert (node[]) )


reachable2 :: a -> [Node] -> Bool
reachable2 a Empty = False
reachable2 a (x:xs)
    | x==a  = True
    | otherwise reacahble2 xs



main :: IO ()
main
    = print (reachable (NodeH NodeI))

    