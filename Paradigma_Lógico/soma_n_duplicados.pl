:- initialization(main).

list2set([] , []).
list2set([E|Es] , Set ) :-
   member(E, Es) ,
   list2set(Es , Set).
list2set([E|Es] , [E|Set] ) :-
   maplist(dif(E), Es),
   list2set(Es , Set).

soma([],0).
soma([Elem|Tail], S):- soma(Tail, S1),
            S is S1 + Elem.

main:-
  read(X),
  list2set(X, Y),
  soma(Y, Z),
  writeln(Z).