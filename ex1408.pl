p(f(X),f(X)).
q(f(X)).
q(g(Z)):-q(Y),p(Y,Z).
r(a).
r(f(Y)):-p(Y,f(Z)),r(Z).

% which of these are logical consequences of the premises?
:-p(f(g(a)),f(g(a))).
:-p(f(g(Z)),f(g(Z))).
:-q(g(f(a))).
%:-q(g(g(f(a)))). % not a logical consequence
:-r(f(f(Z))).