%lengthy stupid prolog chess

member(X,[X|Tail]).
member(X,[_|Tail]):-member(X,Tail).
validsquare(X1/Y1,X2/Y2):-
member(X1,[1,2,3,4,5,6,7,8]),
member(Y1,[1,2,3,4,5,6,7,8]),
member(X2,[1,2,3,4,5,6,7,8]),
member(Y2,[1,2,3,4,5,6,7,8]).

jump(X1/Y1,X2/Y2):-
validsquare(X1/Y1,X2/Y2),
X2 is X1+1,
Y2 is Y1+2.

jump(X1/Y1,X2/Y2):-
validsquare(X1/Y1,X2/Y2),
X2 is X1+2,
Y2 is Y1+1.

jump(X1/Y1,X2/Y2):-
validsquare(X1/Y1,X2/Y2),
X2 is X1+2,
Y2 is Y1-1.

jump(X1/Y1,X2/Y2):-
validsquare(X1/Y1,X2/Y2),
X2 is X1+1,
Y2 is Y1-2.

jump(X1/Y1,X2/Y2):-
validsquare(X1/Y1,X2/Y2),
X2 is X1-1,
Y2 is Y2-2.

jump(X1/Y1,X2/Y2):-
validsquare(X1/Y1,X2/Y2),
X2 is X1-2,
Y2 is Y1-1.

jump(X1/Y1,X2/Y2):-
validsquare(X1/Y1,X2/Y2),
X2 is X1-2,
Y2 is Y1+1.

jump(X1/Y1,X2/Y2):-
validsquare(X1/Y1,X2/Y2),
X2 is X1-1,
Y2 is Y1+2.