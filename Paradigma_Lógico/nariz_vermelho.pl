:- initialization(main).

rena(0, "Vigoroso"). 
rena(1, "Dançarino").
rena(2, "Saltador").
rena(3, "Raposa").
rena(4, "Cometa").
rena(5, "Cupido").
rena(6, "Perito").
rena(7, "Ligeiro").
rena(8, "Rudolph").

readInt(Number) :-
	read_line_to_codes(user_input, Codes),
	string_to_atom(Codes, Atom),
	atom_number(Atom, Number).

sum(A,B,C,D,E,F,G,H,I,R) :- R is ((A+B+C+D+E+F+G+H+I) - 1).

main :-
	readInt(A),
	readInt(B),
	readInt(C),
	readInt(D),
	readInt(E),
	readInt(F),
	readInt(G),
	readInt(H),
	readInt(I), 
	sum(A,B,C,D,E,F,G,H,I,R),
	P is (R mod 9),
	rena(P,X),  
	write(X). 
