% ep(L) describes a list L which contains a consecutive pair of equal elements
ep([X,X|_]).
ep([X,Y|Tail]) :- ep([Y|Tail]).


% noep(L) describes a list L which contains no consecutive pairs of equal elements
noep([]).
noep([_]).
noep([X,Y]) :- dif(X,Y).
noep([X,Y|Tail]) :- dif(X,Y), noep([Y|Tail]).

% ep1(L) describes a list L which contains exactly one pair of consecutive equal elements
ep1([X,X]).
ep1([X,X|Tail]) :- noep([X|Tail]).
ep1([X,Y|Tail]) :- dif(X,Y), ep1([Y|Tail]).

% some test cases
:- ep([]).
:- ep([1,1]).
:- ep([1,2]).
:- ep([1,2,3]).
:- ep([1,2,2]).

:- noep([]).
:- noep([1]).
:- noep([1,1]).
:- noep([1,2]).
:- noep([1,2,3]).
:- noep([1,2,2]).

:- ep1([]).
:- ep1([a]).
:- ep1([a,a]).
:- ep1([a,b,a]).
:- ep1([a,b,b]).