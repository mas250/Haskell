data Node a 
	= Node a [Node a]
	deriving (Show)

nodeA = Node 'A' [nodeC, nodeD]
nodeB = Node 'B' [nodeA]
nodeC = Node 'C' [nodeE, nodeF]
nodeD = Node 'D' []
nodeE = Node 'E' [nodeB]
nodeF = Node 'F' [nodeH]
nodeH = Node 'H' []

travBFS :: Eq a => [a] -> [Node a] -> [a]
travBFS acc [] = []
travBFS acc (Node n cs : ns)
	| n `elem` acc = travBFS acc ns
	| otherwise    = n : travBFS (n:acc) (ns++cs)

broardTraverse :: Eq a => Node a -> [a]
broardTraverse x = travBFS [] [x]

main :: IO()
main = do
	print(broardTraverse nodeA)