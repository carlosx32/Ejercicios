%Carlos David Camacho Panche 20151020034
%Daniel Augusto Parra Castiblanco 20151020015
%Juan Camilo Canizales 12739832

%Programa que permite realizar un arbol genealogico
%Construimos la base de conocimiento
esHombre('T1').
esHombre('T3').
esHombre('T5').
esHombre('T7').
esHombre('T9').
esHombre('T11').
esHombre('T13').
esHombre('T15').
esHombre('B1').
esHombre('B3').
esHombre('B5').
esHombre('B7').
esHombre('A1').
esHombre('A3').
esHombre('P1').
esHombre('H1').

esMujer('T2').
esMujer('T4').
esMujer('T6').
esMujer('T8').
esMujer('T10').
esMujer('T12').
esMujer('T14').
esMujer('T16').
esMujer('B2').
esMujer('B4').
esMujer('B6').
esMujer('B8').
esMujer('A2').
esMujer('A4').
esMujer('P2').
%agregamos los padres y madres
padreDe('B1','T1').
padreDe('B1','T2').
padreDe('B2','T3').
padreDe('B2','T4').
padreDe('B3','T5').
padreDe('B3','T6').
padreDe('B4','T7').
padreDe('B4','T8').
padreDe('B5','T9').
padreDe('B5','T10').
padreDe('B6','T11').
padreDe('B6','T12').
padreDe('B7','T13').
padreDe('B7','T14').
padreDe('B8','T15').
padreDe('B8','T16').
padreDe('A1','B1').
padreDe('A1','B2').
padreDe('A2','B3').
padreDe('A2','B4').
padreDe('A3','B5').
padreDe('A3','B6').
padreDe('A4','B7').
padreDe('A4','B8').
padreDe('P1','A1').
padreDe('P1','A2').
padreDe('P2','A3').
padreDe('P2','A4').
padreDe('H1','P1').
padreDe('H1','P2').
padreDe('H2','P1').
padreDe('H2','P2').



%escribimos las reglas
hijoDe(A,B):- padreDe(B,A).
abueloDe(A,B):- padreDe(A,C),hijoDe(B,C).
bisAbueloDe(A,B):- abueloDe(A,C), hijoDe(B,C).
bisNietoDe(A,B):- bisAbueloDe(B,A).
casadoCon(A,B):- padreDe(C,A), padreDe(C,B).
hermanoDe(A,B):- padreDe(A,C),padreDe(B,C), B\==A.


