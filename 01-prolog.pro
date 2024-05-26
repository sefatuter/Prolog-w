% parent(Parent, Child)
%
parent(albert, peter).
parent(jim, brian).
parent(john, darren).
parent(peter, lee).
parent(peter, sandra).
parent(peter, james).
parent(peter, kate).
parent(peter, kyle).
parent(brian, jenny).
parent(irene, jim).
parent(irene, peter).
parent(pat, brian).
parent(pat, darren).
parent(amanda, jenny).
% parent(lee, ahmet).
% parent(sandra, mehmet)
%

% female(Person)
%
female(lee).
female(sandra).
female(irene).
female(pat).
female(jenny).
female(amanda).
female(kate).

% male(Person)
%
male(albert).
male(jim).
male(peter).
male(brian).
male(john).
male(darren).
male(james).
male(kyle).

% yearOfBirth(Person, Year)
%
yearOfBirth(irene, 1923).
yearOfBirth(pat, 1954).
yearOfBirth(lee, 1970).
yearOfBirth(sandra, 1973).
yearOfBirth(jenny, 2004).
yearOfBirth(amanda, 1979).
yearOfBirth(albert, 1926).
yearOfBirth(jim, 1949).
yearOfBirth(peter, 1945).
yearOfBirth(brian, 1974).
yearOfBirth(john, 1955).
yearOfBirth(darren, 1976).
yearOfBirth(james, 1969).
yearOfBirth(kate, 1975).
yearOfBirth(kyle, 1976).

%a) %
younger(A,B) :- yearOfBirth(A,C), yearOfBirth(B,D), C>D.

%b) %
grandson(A,B) :- parent(B,C), parent(C,A).
% OR  delete male(A), for pdf

%c) %
olderSister(A,B) :- female(A), yearOfBirth(A,C), yearOfBirth(B,D), sibling(A,B), C<D.

%d) %

brother(A,B) :- male(A), yearOfBirth(A,C), yearOfBirth(B,D), parent(P,A), parent(P,B), C<D.

nephew(L,J) :- brother(P,J), parent(P,L).

%e) %
sibling(X,Y) :- parent(P,X), parent(P,Y), X\=Y.

cousins(A,B) :- female(X), female(Y), parent(X,A), parent(Y,B), sibling(X,Y).