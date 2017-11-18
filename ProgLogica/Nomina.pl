% HECHOS
%
% tipo de contrato

tipoContrato('alejandro', 'TCO').
tipoContrato('pedro', 'HC').
tipoContrato('juan', 'HC').
% tipoContrato('miguel', 'MTO').
% tipoContrato('ana', 'Planta').
% tipoContrato('david', 'Planta').
% tipoContrato('julian', 'HC').
% tipoContrato('camilo', 'MTO').
% tipoContrato('laura', 'Planta').
% tipoContrato('paula', 'Planta').
% tipoContrato('javier', 'HC').
% tipoContrato('andres', 'MTO').
% tipoContrato('diego', 'Planta').
% tipoContrato('felipe', 'Planta').
% tipoContrato('maria', 'HC').
% tipoContrato('antonio', 'MTO').


% tipoContrato('antonio', 'MTO').

% horas semanales donde XTC es por tipocontrato
horasXTC('TCO', 40).
horasXTC('HC', 16).
horasXTC('HCH', 8).
horasXTC('MTO', 20).
horasXTC('Planta', 40).

% valor del contrato por categoría
contratoCategoria_ValorHora('TCO', 'Asistente', 10000).
contratoCategoria_ValorHora('MTO', 'Asistente', 9000).
contratoCategoria_ValorHora('HC', 'Asistente', 8000).
contratoCategoria_ValorHora('TCO', 'Titular', 50000).
contratoCategoria_ValorHora('MTO', 'Titular', 40000).
contratoCategoria_ValorHora('HC', 'Titular', 30000).
contratoCategoria_ValorHora('Planta', 'Asistente', 20000).
contratoCategoria_ValorHora('Planta', 'Titular', 100000).

% División del semestre en las semanas por categorias normal y
% vacacional
semestre(18, 'Normal').
semestre(4, 'Vacacional').

% porcentaje de adicion al contrato, donde la segunda variable es el
% porcentaje
adicionContrato('TCO', 15).
adicionContrato('MTO', 12).
adicionContrato('HC', 10).
adicionContrato('HCH', 0).
adicionContrato('Planta', 25).

% Categoria
categoria('alejandro', 'Asistente').
categoria('pedro', 'Asistente').
categoria('juan', 'Titular').
categoria('miguel', 'Titular').
categoria('ana', 'Asistente').
categoria('david', 'Titular').
categoria('camilo', 'Titular').
categoria('julian', 'Asistente').
categoria('laura', 'Asistente').
categoria('paula', 'Titular').
categoria('javier', 'Asistente').
categoria('andres', 'Titular').
categoria('diego', 'Titular').
categoria('felipe', 'Asistente').
categoria('maria', 'Titular').
categoria('antonio', 'Asistente').



% REGLAS
suma([], S, S).
suma([X|Xs], T, S) :- T2 is T+X, suma(Xs, T2, S).

seGana(X,Y,G):- tipoContrato(X,Z), horasXTC(Z,H), categoria(X,C), contratoCategoria_ValorHora(Z,C,VH),adicionContrato(Z,P), semestre(S,Y), G is (H*S*VH + (P/100* H*S*VH)).

nomina(TIEMPO, S):- findall(H,seGana(_,TIEMPO,H), TOTAL), suma(TOTAL,0, S).
