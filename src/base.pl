% Doencas a serem detectadas

doenca(deprecao).
doenca(ansiedade).
doenca(stress).

% Atribuicao generica de nivel da doenca

level('','') :- !.

level(Y,Z) :-
	Y = Z,
	!.

% O grau de cada doenca teve como base o questionario DASS 21
% a soma maxima para cada doenca eh de 21 pontos

grau(doenca(deprecao),X,Y) :-
	X < 7,
	level(Y,'normal'), !.

grau(doenca(deprecao),X,Y) :-
	X >= 7,
	X < 14,
	level(Y,'moderate'), !.

grau(doenca(deprecao),X,Y) :-
	X >= 14,
	level(Y,'severe'), !.

grau(doenca(ansiedade),X,Y) :-
	X < 6,
	level(Y,'normal'), !.

grau(doenca(ansiedade),X,Y) :-
	X >= 6,
	X < 10,
	level(Y,'moderate'), !.

grau(doenca(ansiedade),X,Y) :-
	X >= 10,
	level(Y,'severe'), !.


grau(doenca(ansiedade),X,Y) :-
	X < 10,
	level(Y,'normal'), !.

grau(doenca(ansiedade),X,Y) :-
	X >= 10,
	X < 17,
	level(Y,'moderate'), !.

grau(doenca(ansiedade),X,Y) :-
	X >= 17,
	level(Y,'severe'), !.