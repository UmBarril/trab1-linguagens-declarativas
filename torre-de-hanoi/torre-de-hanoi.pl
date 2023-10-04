% Cria a torre inicial do jogo (a torre de quando se inicia o jogo) NÃO FUNCIONA TEM QUE REVERTER
%
% a deve se comportar assim: ?- criar_torre_inicial(3, X).
% [1,2,3] 
criar_torre_inicial(1, [1]) :- !.
criar_torre_inicial(TAMANHO, [TAMANHO|List]) :-
    TAMANHO_B is TAMANHO - 1,
    criar_torre_inicial(TAMANHO_B, List).

% Retorna o tamanho da lista em Len
tamanho([], 0).
tamanho([_|Tail], Len) :- tamanho(Tail, N), Len is N + 1.

% Separa a cabeça de uma lista de sua cauda
separa([Head|Tail], Head, Tail).

% Escreve vários caracteres em sucessão - escreve_muitos(QuantidadeAEscrever, CaractereAEscrever)
escreve_muitos(0, _) :- !.
escreve_muitos(Quantidade, Char) :- write(Char), N is Quantidade - 1, escreve_muitos(N, Char).

% Mostra uma Torre - mostrar(Torre, Altura).
%
% deve se comportar assim: ?- mostrar([1,2,3],3).
% 1
% 22
% 333
mostrar([], _) :- !.
mostrar(Torre, Len) :-
    separa(Torre, Head, Tail),
    escreve_muitos(Head, Head),
    nl,
    mostrar(Tail, Len).

% Retorna o último elemento de uma lista
ultimo_elemento([Head], E) :- E is Head.
ultimo_elemento([_|Tail], E) :- ultimo_elemento(Tail, E).

% Move o disco do topo de um pino até outro
mover([Topo|_], Destino, [Topo|Destino]).
    
% Começa o programa - iniciar_hanoi(TamanhoDaTorre)
iniciar_hanoi(Tamanho) :- 
    criar_torre_inicial(Tamanho,Origem),
    mover(Origem, [], Resultado),
    write("Origem"), nl,
    mostrar(Origem, Tamanho),
    write("Auxiliar"), nl,
    mostrar(Resultado, 1), nl.

