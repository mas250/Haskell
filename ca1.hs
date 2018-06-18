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
    | head == 'C' = Dash:Dot:Dash:Dot:Gap: encode tail
    | head == 'D' = Dash:Dot:Dot:Gap: encode tail
    | head == 'E' = Dot:Gap: encode tail
    | head == 'F' = Dot:Dot:Dash:Dot:Gap: encode tail
    | head == 'G' = Dash:Dash:Dot:Gap: encode tail
    | head == 'H' = Dot:Dot:Dot:Gap: encode tail
    | head == 'I' = Dot : Dot : Gap : encode tail
    | head == 'J' = Dot : Dash : Dash : Dash : Gap : encode tail
    | head == 'K' = Dash : Dot : Dash : Gap : encode tail
    | head == 'L' = Dot : Dash : Dot : Dot : Gap : encode tail
    | head == 'M' = Dash : Dash : Gap : encode tail
    | head == 'N' = Dash : Dot : Gap : encode tail
    | head == 'O' = Dash : Dash : Dash : Gap : encode tail
    | head == 'P' = Dot : Dash : Dash : Dot : Gap : encode tail
    | head == 'Q' = Dash : Dash : Dot : Dash : Gap : encode tail
    | head == 'R' = Dot : Dash : Dot : Gap : encode tail
    | head == 'S' = Dot : Dot : Dot : Gap : encode tail
    | head == 'T' = Dash : Gap : encode tail
    | head == 'U' = Dot : Dot : Dash : Gap : encode tail
    | head == 'V' = Dot : Dot : Dot : Dash : Gap : encode tail
    | head == 'W' = Dot : Dash : Dash : Gap : encode tail
    | head == 'X' = Dash : Dot : Dot : Dash : Gap : encode tail
    | head == 'Y' = Dash : Dot : Dash : Dash : Gap : encode tail
    | head == 'Z' = Dash : Dash : Dot : Dot : Gap : encode tail


decode :: [Morse] -> String
decode [] = []
decode (Dot : Dash : Gap : tail) = 'A' : decode tail
decode (Dash : Dot : Dot : Dot : Gap : tail) = 'B' : decode tail
decode (Dash : Dot : Dash : Dot : Gap : tail) = 'C' : decode tail
decode (Dash : Dot : Dot : Gap : tail) = 'D' : decode tail
decode (Dot : Gap : tail) = 'E' : decode tail
decode (Dot : Dot : Dash : Dot : Gap : tail) = 'F' : decode tail
decode (Dash : Dash : Dot : Gap : tail) = 'G' : decode tail
decode (Dot : Dot : Dot : Dot : Gap : tail) = 'H' : decode tail
decode (Dot : Dot : Gap : Gap : tail) = 'I' : decode tail
decode (Dot : Dash : Dash : Dash : Gap : tail) = 'J' : decode tail
decode (Dash : Dot : Dash : Gap : tail) = 'K' : decode tail
decode (Dot : Dash : Dot : Dot : Gap : tail) = 'L' : decode tail
decode (Dash : Dash : Gap : tail) = 'M' : decode tail
decode (Dash : Dot : Gap : tail) = 'N' : decode tail
decode (Dash : Dash : Dash : Gap : tail) = 'O' : decode tail
decode (Dot : Dash : Dash : Dot : Gap : tail) = 'P' : decode tail
decode (Dash : Dash : Dot : Dash : Gap : tail) = 'Q' : decode tail
decode (Dot : Dash : Dot : Gap : tail) = 'R' : decode tail
decode (Dot : Dot : Dot : Gap : tail) = 'S' : decode tail
decode (Dash : Gap : tail) = 'T' : decode tail
decode (Dot : Dot : Dash : Gap : tail) = 'U' : decode tail 
decode (Dot : Dot : Dot : Dash : Gap : tail) = 'V' : decode tail
decode (Dot : Dash : Dash : Gap : tail) = 'W' : decode tail
decode (Dash : Dot : Dot : Dash: Gap : tail) = 'X' : decode tail
decode (Dash : Dot : Dash : Dash : Gap : tail) = 'Y' : decode tail
decode (Dash : Dash : Dot : Dot : Gap : tail) = 'Z' : decode tail 

main ::IO ()
--main = putStrLn (show(encode "ABA"))
main = putStrLn (show(encode "CBA"))
