% for the following programs, the queries:
% :- p(a).
% :- q(a).
% will loop due to prolog omitting occurs check

p(X) :- p(f(X)).
q(X) :- q(q(X)).