avo(X,Y) :- parent(X,Z), parent(Z,Y).
relacao(X,Y) :- namora(X,Y), namora(Y,X).
irmao(X,Y) :- parent(Z,X), parent(Z,Y), X \= Y.
irmao(Y,X) :- parent(Z,X), parent(Z,Y), X \= Y.
tio(X,Y) :- parent(Z,Y),irmao(X,Z).
filho(X,Y) :- parent(Y,X).
genro(X,Y) :- parent(Y,Z), namora(X,Z).
cunhado(X, Y) :- namora(X, Z), irmao(Z, Y).
cunhado(Y, X) :- namora(X, Z), irmao(Z, Y).
neto(X,Y) :- avo(Y,X).




namora(joao,maria).
namora(maria,joao).
namora(ana,jose).
namora(jose,ana).

parent(jose,joao).
parent(ana,joao).
parent(joao,kevin).
parent(maria,kevin).
parent(maria,ana).
parent(joao,ana).
parent(jose,messi).
parent(ana,messi).