{-
MOdelos de programacion 2, 
Algoritmo para contar una mano
-}

module Cartas where

data Pinta = Diamante | Corazon | Trebol | Picas  deriving(Show, Read, Eq)
data Valor = Numero Int | J | Q | K | A  deriving (Read, Eq, Show)
data Carta = {valor::Valor pinta::Pinta} deriving (Eq, Show)

valMano::[(Carta)]->int
valMano [ ] = 0
valMano ((a):xs)= valCarta a + valMano(xs)

valCarta::Carta->int
valCarta a= fst a   