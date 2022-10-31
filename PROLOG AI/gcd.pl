gcd(X,X,X).
gcd(X,Y,D):-X<Y,Y1 is Y-X,gcd(X,Y1,D).
gcd(X,Y,D):-X>Y,Y is X-Y,gcd(Y,Y1,D).
