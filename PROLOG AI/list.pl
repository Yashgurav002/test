member(X,[X|Tail]).
member(X,[_|Tail]):-member(X,Tail).

%concatenation of lists

conc([],L,L).
conc([X1|L1],L2,[X1|L3]):-conc(L1,L2,L3).

%add a item to the list
add(X,[X|Tail],Tail).

%membership operation using concatenation
member(I,L):-conc(_,[I|_],L).

%deletion of an element
del(X,[X|Tail],Tail).
del(X,[Head|Tail],[Head|Tail1]):-del(X,Tail,Tail1).

%permutation of the list

perm([],[]).
perm(L,[X|P]):-del(X,L,L1),perm(L1,P).

%sublist of lists
list_subset([],[]).
list_subset([Head|Tail],[Head|Subset]) :- list_subset(Tail,Subset).
list_subset([Head|Tail],Subset) :- list_subset(Tail,Subset).