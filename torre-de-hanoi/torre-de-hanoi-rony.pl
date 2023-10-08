% Predicado para resolver a Torre de Hanoi
hanoi(1, Origem, Destino, Auxiliar) :-
    write('Mova o disco do topo de '),
    write(Origem),
    write(' para '),
    write(Destino),
    nl.

hanoi(N, Origem, Destino, Auxiliar) :-
    N > 1,
    M is N - 1,
    hanoi(M, Origem, Auxiliar, Destino),
    hanoi(1, Origem, Destino, ),
    hanoi(M, Auxiliar, Destino, Origem).

% Predicado para iniciar o jogo com um número específico de discos
iniciar_hanoi(N) :-
    hanoi(N, pino1, pino3, pino2).


% Exemplo de uso:
% Para resolver o jogo da Torre de Hanoi com 3 discos, você pode chamar:
% iniciar_hanoi(3).


% Definindo as regras do jogo:
% 
% A descrição do jogo da Torre de Hanoi é fornecida no enunciado, onde você tem três pinos (pino1, pino2 e pino3) e precisa mover discos de um pino para outro, seguindo a regra de que um disco maior nunca pode ficar em cima de um disco menor.
% 
% Predicado hanoi/4:
% 
% O código implementa o jogo da Torre de Hanoi com o predicado hanoi/4. Este predicado é recursivo e lida com os seguintes parâmetros:
% 
% N: O número de discos a serem movidos.
% Origem: O pino de origem.
% Destino: O pino de destino.
% Auxiliar: O pino auxiliar, que é usado como suporte temporário durante os movimentos.
% Casos Base e Recursão:
% 
% O predicado hanoi/4 possui dois casos:
% 
% Caso Base: Quando N é igual a 1, isso significa que só há um disco a ser movido. Nesse caso, o predicado escreve uma mensagem indicando qual disco deve ser movido da origem para o destino.
% 
% Caso Recursivo: Quando N é maior que 1, o predicado é chamado recursivamente três vezes:

%hanoi(M, Origem, Auxiliar, Destino) % Move os M-1 discos superiores da origem para o pino auxiliar usando o destino como auxílio.

%hanoi(1, Origem, Destino, _) % Move o disco restante da origem para o destino.

%hanoi(M, Auxiliar, Destino, Origem) % Move os M-1 discos superiores do pino auxiliar para o destino usando a origem como auxílio.

% A recursão continua até que N seja reduzido a 1, e a partir desse ponto, os discos são movidos da origem para o destino, obedecendo às regras do jogo.

% Predicado iniciar_hanoi/1:

% O predicado iniciar_hanoi/1 é usado para iniciar o jogo com um número específico de discos. Ele chama o predicado hanoi/4 com os valores iniciais: N discos na pino1 como origem, pino3 como destino e pino2 como auxiliar.

% Exemplo de Uso:

% O exemplo de uso demonstra como chamar o jogo para resolver a Torre de Hanoi com um número específico de discos. Por exemplo, iniciar_hanoi(3) iniciará o jogo com 3 discos
