pp(f(Y),Z).
q(g(Y),Z) :- pp(f(Y),Z).


p(X,Y) :- r(f(X),X).
r(g(Z),f(Z)).
r(g(X),Y) :- r(X,f(Y)).