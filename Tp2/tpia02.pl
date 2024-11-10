%question 01
is_member([X|_], X).  %cas de base.
is_member([_|N], X):-
    is_member(N, X). %l'appel récursif.

%question 02
first(E, [E|_]).  % Premier élément de la liste

%question 03
my_last(E, [E]).  % cas de base : quand il ne reste qu'un seul élément.
my_last(E, [_|D]):-
    my_last(E, D). %l'appel récursif à la fonction.

%question 04
penultimate(E, [E,_]).  % cas de base : la liste contient que deux éléments ou E est l'avant-dernier.
penultimate(E, [_|T]):-
    penultimate(E, T).  %le cas récursif

%question 05
del_k(X, [X|T], 1, T).  % cas de base: K est la première position de la liste, donc on supprime X (la tête de la liste)
del_k(X, [H|T], K, [H|R]):-
    K > 1,
    K1 is K - 1,  % Calcul de K1
    del_k(X, T, K1, R).  % Récursion pour supprimer l'élément à la position K.

%question 06
len([], 0).  %cas de base
len([_|L], N):-  %cas récursif
    len(L, N1),
    N is N1 + 1.

%question 07
even([]).  % cas de base : la liste est vide.
even([_,_|T]):-
    even(T).  % cas récursif.

%question 08
concant([], L, L).  %cas de base : la première liste est vide.
concant([H|T], L, [H|D]):-
    concant(T, L, D).  %cas récursif.

%question 09
palindrome(L):-
    reverse(L, L).  % fonction intégrée pour inverser la liste et vérifier si c'est un palindrome.

%2ème méthode pour question 09
palindr([]).  % cas de base.
palindr([_]).  %cas de base.

palindr([H|T]):-   %cas récursif.
    append(Middle, [H], T),
    palindr(Middle).
