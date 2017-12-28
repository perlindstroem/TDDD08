%palindtrome(P) checks if P is a palindrome
palindrome([_]).
palindrome([X,X]).
palindrome([X|Tail]) :- append(Middle, [X], Tail), palindrome(Middle).

%should succeed
:- palindrome([a]).
:- palindrome([a,a]).
:- palindrome([a,b,a]).
:- palindrome([a,b,c,b,a]).

%should fail
:- palindrome([a,b]).
:- palindrome([a,b,a,a]).