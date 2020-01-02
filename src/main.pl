:-include('base.pl').
:-include('perguntas.pl').


% Predicado que calcula o nivel de transtorno
questionario :-
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
	writeln('Transtornos'),
	writeln(''),
	write('Depressão: '),
	grau(doenca(deprecao),X),
	write('Ansiedade: '),
	grau(doenca(ansiedade),Y),
	write('Estresse: '),
	grau(doenca(stress),Z),
	writeln('').