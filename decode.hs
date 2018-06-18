data Morse
    = Dot
    | Dash
    | Gap
    	deriving (Show, Eq) 

insert ::String -> [String] -> [String]
insert e [] = [e]
insert e (head:tail)
    =  head:insert e tail
 
encode ::String -> [Morse]
encode [] = []
encode (head:tail)
	| head == 'A' = Dot:Dash:Gap: encode tail
	| head == 'B' = Dash:Dot:Dot:Dot:Gap: encode tail


decode ::[Morse] -> String
decode [] = ""

decode (Dot:Dash:Gap:tail) = 'A': decode tail

main ::IO ()
--main = putStrLn (show(encode "ABA"))
main = putStrLn (show(decode [Dot,Dash,Gap,Dot,Dash,Gap]))
