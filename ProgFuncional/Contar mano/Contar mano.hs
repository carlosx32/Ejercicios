{-
MOdelos de programacion 2, 
Algoritmo para contar una mano
Carlos Camacho
Camilo Canizales
Daniel Parra
-}

module Cartas where


evaluar::[(Char,Char)]->Int
evaluar [] = 0
evaluar ((a,b):xs)
 | (buscarAs ((a,b):xs) == True && contar ((a,b):xs) > 11 ) = contar ((a,b):xs)
 | (buscarAs ((a,b):xs) == True && contar ((a,b):xs) <= 11 ) = contar ((a,b):xs) + 10
 | otherwise = contar ((a,b):xs)


contar::[(Char,Char)]->Int 
contar [ ] = 0
contar ((a,b):xs) 
 | a == 'A' = 1 + contar(xs)
 | a == '2' = 2 + contar(xs)
 | a == '3' = 3 + contar(xs)
 | a == '4' = 4 + contar(xs)
 | a == '5' = 5 + contar(xs)
 | a == '6' = 6 + contar(xs)
 | a == '7' = 7 + contar(xs)
 | a == '8' = 8 + contar(xs)
 | a == '9' = 9 + contar(xs)
 | a == 'J' = 10 + contar(xs)
 | a == 'K' = 10 + contar(xs)
 | a == 'Q' = 10 + contar(xs)
 | otherwise = 0 + contar(xs)
 
 
buscarAs::[(Char,Char)]->Bool
buscarAs [ ] = False
buscarAs ((a,b):xs)
 | a == 'A' = True
 | a /= 'A' = buscarAs xs
