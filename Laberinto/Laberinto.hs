{-
    Laberinto imposible :D nivel 1
-}
module Laberinto where 

labe::[[Char]]
labe=[
    ['1','1','1','1','1','1','1','1','1','1'],
    ['1','1','0','0','0','1','1','1','1','1'],
    ['1','1','0','1','0','f','0','0','0','1'],
    ['1','1','0','1','0','1','1','1','0','1'],
    ['1','1','0','1','0','0','0','0','0','1'],
    ['1','1','0','1','1','1','1','1','1','1'],
    ['1','1','0','1','1','1','1','1','1','1'],
    ['1','1','x','1','0','1','1','1','1','1'],
    ['1','1','1','1','1','1','1','1','1','1'],
    ['1','1','1','1','1','1','1','1','1','1']]
    
    
matxy :: (Int,Int)->Char
matxy a (fila,columna) =  (a!!fila)!!columna

movIzq::(Int,Int)->(Int,Int)
movIzq (a,b)=if a>0 then (a-1,b)
             else (a,b)

movDer::(Int,Int)->(Int,Int)
movDer (a,b)=if a<9 then (a+1,b)
             else (a,b)
movArr::(Int,Int)->(Int,Int)
movArr (a,b)=if b>0 then (a,b-1)
             else (a,b)
movAbj::(Int,Int)->(Int,Int)
movAbj (a,b)=if b<9 then (a,b+1)
             else (a,b)
modulo::Int->Int
modulo a= mod a 10

encontarInicio::


esInicio :: [[Char]]->(Int,Int)->(Int,Int)
esInicio a (fila,col) = if (matxy (fila,col) == 'x') then (fila, col)
                        else if(fila<9 && col<9)
                            then esInicio a (fila, (col+1) )
                        else if  (col==9)
                            then esInicio a (fila+1 ,0)
                        else (10,10)
juego::[[Char]]->(Int,Int)->[(Int,Int)]
juego lab (a,b)=	if (matxy lab a b) == 'f' then (a,b)
					else if matxy () 


