:- include('base.pl').

start() :-
    questionario(A, B, C),
    writeln(''),
    writeln('Transtornos'),
    writeln(''),
    write('Depressão: '),
    diagnostico(A),
    write('Ansiedade: '),
    diagnostico(B),
    write('Estresse: '),
    diagnostico(C),
    writeln(''),
    !.