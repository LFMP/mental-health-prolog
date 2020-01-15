:-include('perguntas.pl').
:-use_module(library(plunit)).
% Doencas a serem detectadas
doenca(depressao).
doenca(ansiedade).
doenca(stress).

% O grau de cada doenca teve como base o questionario DASS 21
% a soma maxima para cada doenca eh de 21 pontos

%% grau(+doenca, +X, ?Y) is det
%
% Verdadeiro se X pertence ao valor determinado para cada nivel de doenca.
grau(doenca(depressao), X, Y) :-
    X<7,
    Y is 0,
    !.

grau(doenca(depressao), X, Y) :-
    X>=7,
    X<14,
    Y is 1,
    !.

grau(doenca(depressao), X, Y) :-
    X>=14,
    Y is 2,
    !.

grau(doenca(ansiedade), X, Y) :-
    X<6,
    Y is 0,
    !.

grau(doenca(ansiedade), X, Y) :-
    X>=6,
    X<10,
    Y is 1,
    !.

grau(doenca(ansiedade), X, Y) :-
    X>=10,
    Y is 2,
    !.


grau(doenca(stress), X, Y) :-
    X<10,
    Y is 0,
    !.

grau(doenca(stress), X, Y) :-
    X>=10,
    X<17,
    Y is 1,
    !.

grau(doenca(stress), X, Y) :-
    X>=17,
    Y is 2,
    !.

:-begin_tests(graudoenca).

test(semDepressao) :- grau(doenca(depressao), 6, 0).
test(semAnsiedade) :- grau(doenca(ansiedade), 5, 0).
test(semStress) :- grau(doenca(stress), 9, 0).
test(mediaDepressao) :- grau(doenca(depressao), 10, 1).
test(mediaAnsiedade) :- grau(doenca(ansiedade), 9, 1).
test(medioStress) :- grau(doenca(stress), 12, 1).
test(altaDepressao) :- grau(doenca(depressao), 17, 2).
test(altaAnsiedade) :- grau(doenca(ansiedade), 12, 2).
test(altoStress) :- grau(doenca(stress), 20, 2).

:-end_tests(graudoenca).

diagnostico(X) :-
	X == 0,
	write_ln('Não há transtorno'), !.

diagnostico(X) :-
	X == 1,
	write_ln('Nível médio do transtorno'), !.

diagnostico(X) :-
	X == 2,
	write_ln('Nível alto do transtorno'), !.

%% questionario(+X, +Y, +Z) is det
% Predicado que calcula o nivel de transtorno
questionario(Depressao, Ansiedade, Stress) :-
	pergunta1(0,Depre),
	pergunta2(0,Ans),
	pergunta3(0,Str),
	pergunta4(Ans,Ans2),
	pergunta5(Depre,Depre2),
	pergunta6(Str,Str2),
	pergunta7(Ans2,Ans3),
	pergunta8(Str2,Str3),
	pergunta9(Ans3,Ans4),
	pergunta10(Depre2,Depre3),
	pergunta11(Str3,Str4),
	pergunta12(Str4,Str5),
	pergunta13(Depre3,Depre4),
	pergunta14(Str5,Str6),
	pergunta15(Ans4,Ans5),
	pergunta16(Depre4,Depre5),
	pergunta17(Depre5,Depre6),
	pergunta18(Str6,Str7),
	pergunta19(Ans5,Ans6),
	pergunta20(Ans6,Ans7),
	pergunta21(Depre6,Depre7),
	X = Depre7,
	Y = Ans7,
	Z = Str7,
	grau(doenca(depressao),X, SaidaD),
	Depressao is SaidaD,
	grau(doenca(ansiedade),Y,SaidaA),
	Ansiedade is SaidaA,
	grau(doenca(stress),Z, SaidaS),
	Stress is SaidaS, !.