{-
    Laberinto imposible :D nivel 1
-}
module Laberinto where 

labe::[[Char]]
labe=[
    ['x','x','x','x','x','x','x','x','x','x'],
    ['x','1','1','1','1','1','2','x','x','x'],
    ['x','1','x','x','x','x','x','x','x','x'],
    ['x','1','1','x','x','x','x','x','x','x'],
    ['x','x','1','x','x','x','x','x','x','x'],
    ['x','x','1','x','x','x','x','x','x','x'],
    ['x','1','1','x','x','x','x','x','x','x'],
    ['x','1','x','x','x','x','x','x','x','x'],
    ['x','0','x','x','x','x','x','x','x','x'],
    ['x','x','x','x','x','x','x','x','x','x']]
   
Cordenadas::[[Char]]
	

Imprimir::[[Char]]
	
buscarx::[[Char]]->Char->Int->Int
buscarx a b c =if(elem b (head a) ) then c else buscarx a b c+1

buscary::[[Char]]->Char->Int->Int
buscary a b c =if(elem b a) then c else buscarx a b c+1

    
encontrarInicio::[[Char]]->(Int,Int)
encontrarInicio a= ( buscarx a '0' 0  , 1)