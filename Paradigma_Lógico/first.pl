soma(A,B,C) :- C is A+B. 

:- initialization(main).

main :-
	repeat,
	read(A),
	read(B),
	soma(A,B,C),
	write(C), nl,
	halt(0).
