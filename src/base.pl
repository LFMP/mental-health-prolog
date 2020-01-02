% Doencas a serem detectadas

doenca(deprecao).
doenca(ansiedade).
doenca(stress).

% O grau de cada doenca teve como base o questionario DASS 21
% a soma maxima para cada doenca eh de 21 pontos

grau(doenca(deprecao),X) :-
	X < 7,
	write_ln('Não há transtorno').

grau(doenca(deprecao),X) :-
	X >= 7,
	X < 14,
	write_ln('Nível médio de transtorno').

grau(doenca(deprecao),X) :-
	X >= 14,
	write_ln('Nível alto de transtorno').

grau(doenca(ansiedade),X) :-
	X < 6,
	write_ln('Não há transtorno').

grau(doenca(ansiedade),X) :-
	X >= 6,
	X < 10,
	write_ln('Nível médio de transtorno').

grau(doenca(ansiedade),X) :-
	X >= 10,
	write_ln('Nível alto de transtorno').


grau(doenca(stress),X) :-
	X < 10,
	write_ln('Não há transtorno').

grau(doenca(stress),X) :-
	X >= 10,
	X < 17,
	write_ln('Nível médio de transtorno').

grau(doenca(stress),X) :-
	X >= 17,
	write_ln('Nível alto de transtorno').