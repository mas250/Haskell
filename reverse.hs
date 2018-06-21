reverse ::[a] -> [a]
reverse xs
	= reverseInto [] xs

reverseInto :: [a]->[a]->[a]
reverseInto xs []
	= xs

reverseInto xs (z:zs)
	= reverseInto (z:xs) zs