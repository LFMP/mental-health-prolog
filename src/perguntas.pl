pergunta1(Depre,Y) :-
	write_ln('Eu tive dificuldade para me acalmar'),
	read(user_input,X),
	Y is Depre + X.

pergunta2(Ans,Y) :-
	write_ln('Eu percebi que estava com a boca seca'),
	read(user_input,X),
	Y is Ans + X.

pergunta3(Str,Y) :-
	write_ln('Eu não conseguia ter sentimentos positivos'),
	read(user_input,X),
	Y is Str + X.

pergunta4(Ans,Y) :-
	write_ln('Eu tive dificuldade para respirar '),
	read(user_input,X),
	Y is Ans + X.

pergunta5(Depre,Y) :-
	write_ln('Foi difícil ter iniciativa para fazer as coisas'),
	read(user_input,X),
	Y is Depre + X.

pergunta6(Str,Y) :-
	write_ln('Em geral, tive reações exageradas às situações'),
	read(user_input,X),
	Y is Str + X.

pergunta7(Ans,Y) :-
	write_ln('Tive tremores (por exemplo, nas mãos)'),
	read(user_input,X),
	Y is Ans + X.

pergunta8(Str,Y) :-
	write_ln('Eu senti que estava bastante nervoso(a)'),
	read(user_input,X),
	Y is Str + X.

pergunta9(Ans,Y) :-
	write_ln('Eu fiquei preocupado(a) com situações em que poderia entrar em pânico e fazer papel de bobo(a)'),
	read(user_input,X),
	Y is Ans + X.

pergunta10(Depre,Y) :-
	write_ln('Eu senti que não tinha expectativas positivas a respeito de nada'),
	read(user_input,X),
	Y is Depre + X.

pergunta11(Str,Y) :-
	write_ln('Notei que estava ficando agitado(a)'),
	read(user_input,X),
	Y is Str + X.

pergunta12(Str,Y) :-
	write_ln('Achei difícil relaxar'),
	read(user_input,X),
	Y is Str + X.

pergunta13(Depre,Y) :-
	write_ln('Eu me senti abatido(a) e triste'),
	read(user_input,X),
	Y is Depre + X.

pergunta14(Str,Y) :-
	write_ln('Eu não tive paciência com coisas que interromperam o que estava fazendo'),
	read(user_input,X),
	Y is Str + X.

pergunta15(Ans,Y) :-
	write_ln('Eu senti que estava prestes a entrar em pânico'),
	read(user_input,X),
	Y is Ans + X.

pergunta16(Depre,Y) :-
	write_ln('Não consegui me empolgar com nada'),
	read(user_input,X),
	Y is Depre + X.

pergunta17(Depre,Y) :-
	write_ln('Eu senti que não tinha muito valor como pessoa'),
	read(user_input,X),
	Y is Depre + X.

pergunta18(Str,Y) :-
	write_ln('Eu senti que eu estava muito irritado(a)'),
	read(user_input,X),
	Y is Str + X.

pergunta19(Ans,Y) :-
	write_ln('Eu percebi as batidas do meu coração mais aceleradas sem ter feito esforço físico'),
	read(user_input,X),
	Y is Ans + X.

pergunta20(Ans,Y) :-
	write_ln('Eu me senti assustado(a) sem ter motivo'),
	read(user_input,X),
	Y is Ans + X.

pergunta21(Depre,Y) :-
	write_ln('Eu senti que a vida não tinha sentido'),
	read(user_input,X),
	Y is Depre + X.