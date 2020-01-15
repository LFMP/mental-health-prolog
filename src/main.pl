:- include('base.pl').

:- writeln("================================================================================================================").
:- writeln("A saúde mental inclui nosso bem-estar emocional, psicológico e social. ").
:- write("Afeta como pensamos, sentimos e agimos.").
:- writeln(" Também ajuda a determinar como lidamos com o estresse,").
:- writeln("nos relacionamos com os outros e fazemos escolhas. ").
:- writeln("A saúde mental é importante em todas as fases da vida, desde a infância e a adolescência até a idade adulta.").
:- writeln("Para proseguir com o teste de estresse, depressão e ansiedade digite o seguinte comando (incluido o ponto):").
:- writeln("start.").
:- writeln("================================================================================================================").
%% grau() is det
% predicado que carrega todo o sistema e apresenta o resultado do teste
start :-
    nl,
    write("Este teste da escala de estresse, ansiedade e depressão (DASS 21) avalia a gravidade "),
    writeln("dos sintomas de transtorno mental associados aos três e fornece um resultado leve, moderado ou grave."),
    write("Este teste não é um diagnóstico por si só, é apenas um esquema de autorrelato "),
    writeln("e deve ser seguido por uma avaliação psicológica ou psiquiátrica completa."),
    write("Para cada pergunta responda com um número inteiro de 0 a 3 seguinte de um ponto de acordo com a sua frequencia,"),
    writeln("onde 0 corresponde à 'nunca', 1 à 'às vezes', 2 à 'frequentemente' e 3 à 'quase sempre'."),
    nl,
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