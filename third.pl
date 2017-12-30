% thi(L1,L2) every third element from the second element in L1 is in L2
thi([],[]).
thi([_|L1],L2) :-
	third(L1,L2).

% third(L1,L2) every third element from L1 is in L2
third([],[]).
third([X|_],[X]).
third([X,_,_|L1],[X|L2]):-
	third(L1,L2).

% should succeed
:-thi([],[]).
:-thi([a,b,c,d,e],[b,e]).

% should fail
:-thi([a,b,c],[c]).