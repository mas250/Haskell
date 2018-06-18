Morse ::  [Char, String]
Morse = [('D' ,"dash" "dot" "dot")]

encode :: String -> Morse

encode [] = 

encode(head:tail)
	| head == 'D' = head == ["dash" "dot" "dot"] encode(tail)
	otherwise ++ " "

	| head



main :: IO ()
main
	= print (encode ("DOG"))
