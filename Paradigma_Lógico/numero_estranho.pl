:- initialization(main).

somarLista([], 0).
somarLista([H|T], Soma) :-
    somarLista(T, K),
    Soma is H + K.

max([], R, R).
max([X|Xs], WK, R):- X >  WK, max(Xs, X, R).
max([X|Xs], WK, R):- X =< WK, max(Xs, WK, R).
max([X|Xs], R):- max(Xs, X, R).

menor([], R, R).
menor([X|Xs], WK, R):- X <  WK, menor(Xs, X, R).
menor([X|Xs], WK, R):- X >= WK, menor(Xs, WK, R).
menor([X|Xs], R):- menor(Xs, X, R).

len([], 0).
len([_|T], Count) :-
len(T, Count1), Count is Count1 + 1.

main :-
    read(user_input, Lista),
    somarLista(Lista, Soma),
    max(Lista, Maior),
    menor(Lista, Menor),
    Diferenca is Maior - Menor,
    len(Lista, Tamanho),
    Media is Soma / Tamanho,
    Estranho is Media * Diferenca,
    writeln(Estranho).