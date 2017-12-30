% fourth(L1,L2) L2 contains every fourth element starting from the second element in L1
fourth([],[]).
fourth([_|L1],L2) :- fourth_(L1,L2).

% fourth(L1,L2) L2 contains every fourth element starting in L1
fourth_([],[]).
fourth_([X|_],[X]).
fourth_([X,_,_,_|L1],[X|L2]) :- fourth_(L1,L2).

% should succeed
:- fourth([],[]).
:- fourth([a,b,c],[b]).
:- fourth([a,b,c,d,e,f,g],[b,f]).

% should fail
:- fourth([a,b,c,d],[c]).