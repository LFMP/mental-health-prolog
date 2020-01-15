:- include('base.pl').

%% grau() is det
% predicado que carrega todo o sistema e apresenta o resultado do teste
start:-
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