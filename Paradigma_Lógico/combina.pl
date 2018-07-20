:- initialization(main).

combina([], [], []). 
combina([], K, K).
combina(A, [], A).
combina([A|B],[C|D], R) :- combina(B, D, R1), R = [A|[C|R1]].   

main :-
	read(L1),
	read(L2),
	combina(L1,L2,R),
	write(R), nl,
    halt(0). 