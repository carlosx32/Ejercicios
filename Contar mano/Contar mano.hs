{-
MOdelos de programacion 2, 
Algoritmo para contar una mano
-}

module Cartas where
contarMano::[(Char,Char)]->Int 
contarMano [ ] = 0
contarMano ((a,b):xs) 
 | a == 'A' = 1 + contarMano(xs)
 | a == '2' = 2 + contarMano(xs)
 | a == '3' = 3 + contarMano(xs)
 | a == '4' = 4 + contarMano(xs)
 | a == '5' = 5 + contarMano(xs)
 | a == '6' = 6 + contarMano(xs)
 | a == '7' = 7 + contarMano(xs)
 | a == '8' = 8 + contarMano(xs)
 | a == '9' = 9 + contarMano(xs)
 | a == 'J' = 10 + contarMano(xs)
 | a == 'K' = 10 + contarMano(xs)
 | a == 'Q' = 10 + contarMano(xs)
 | otherwise = 0 + contarMano(xs)
