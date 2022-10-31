%base condition for solution
solution([]).
solution([X/Y|Others]):-solution(Others),member(Y,[1,2,3,4,5,6,7,8]),noattack(X/Y,Others).

%base condition for noattack
noattack(_,[]).
noattack(X/Y,[X1/Y1|Others]):- Y=\=Y1, Y1-Y=\=X1-X, Y1-Y=\=X-X1, noattack(X/Y,Others).

%membership
member(X,[X|_]).
member(X,[Y|L]):-member(X,L).