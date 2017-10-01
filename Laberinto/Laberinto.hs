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
    
    
matxy :: [[Char]]->(Int,Int)->Char
matxy a (fila,columna) =  (a!!fila)!!columna

movIzq::(Int,Int)->(Int,Int)
--movIzq (a,b)=if a>0 then (a-1,b)
movIzq (a,b)= (a,b-1)
--             else (a,b)

movDer::(Int,Int)->(Int,Int)
--movDer (a,b)=if a<9 then (a+1,b)
movDer (a,b)= (a,b+1)
--             else (a,b)
movArr::(Int,Int)->(Int,Int)
--movArr (a,b)=if b>0 then (a,b-1)
movArr (a,b)= (a-1,b)
--             else (a,b)
movAbj::(Int,Int)->(Int,Int)
--movAbj (a,b)=if b<9 then (a,b+1)
movAbj (a,b)= (a+1,b)
--             else (a,b)
modulo::Int->Int
modulo a= mod a 10

esInicio :: [[Char]]->(Int,Int)->(Int,Int)
esInicio a (fila,col) = if (matxy a (fila,col) == 'x') then (fila, col)
                        else if(fila<9 && col<9)
                            then esInicio a (fila, (col+1) )
                        else if  (col==9)
                            then esInicio a (fila+1 ,0)
                        else (10,10)
sigMovimiento::[[Char]]->String->(Int,Int)->(Int, Int)



juego::[[Char]]->String->(Int,Int)->[(Int,Int)]
juego lab ori (a,b)=if matxy lab (a,b) == 'f' then [(a,b)]
                else if matxy lab (movArr (a,b))=='0'
                    then  [(a,b)]++juego lab (movArr (a,b))
                else if matxy lab (movDer (a,b))=='0'
                    then  [(a,b)]++juego lab (movDer (a,b))
                else if matxy lab (movAbj (a,b))=='0'
                    then  [(a,b)]++juego lab (movAbj (a,b))
                else if matxy lab (movIzq (a,b))=='0'
                    then  [(a,b)]++juego lab (movIzq (a,b))
                else [(a,b)]++ juego lab (sigMovimiento lab ori (a)) 