parent(pam,bob).
parent(tom,bob).
parent(bob,ann).
parent(bob,pat).
parent(tom,liz).
parent(pat,jim).

offspring(X,Y):- parent(Y,X).

grandparent(X,Y):- parent(X,Z),parent(Z,Y).
grandchildren(X,Y):- grandparent(Y,X). 

mother(X,Y):- parent(X,Y),female(X).
father(X,Y):- parent(X,Y),male(X).


%sister(X,Y):-parent(Z,X),parent(Z,Y),female(X).
sister(X,Y):-siblings(X,Y),female(X).
siblings(X,Y):- parent(Z,X),parent(Z,Y).

female(ann).
female(liz).
female(pam).
male(jim).
male(pat).
male(bob).
male(tom).


predecessor(X,Y):-parent(X,Y).
predecessor(X,Y):-parent(X,Z),parent(Z,Y).

%Date
make_date(Y,M,D,date(Y,M,D)).

%Define points,segments and triangles

point(X,Y).
seg(point(X,Y),point(A,B)).
triangle(point(X,Y),point(A,B),point(C,B)).

%vertical/2
vertical(seg(point(X,Y),point(X,B))).
horizontal(seg(point(X,Y),point(D,Y))).


rectangle(point(X,Y),point(A,Y),point(X,B),point(A,B)).
square(point(X,Y),point(A,Y),point(X,B),point(A,B)).
