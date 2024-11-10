%question 01
is_member([X|_], X).  %cas de base.
is_member([_|N], X):-
    is_member(N, X). %l'appel r�cursif.

%question 02
first(E, [E|_]).  % Premier �l�ment de la liste

%question 03
my_last(E, [E]).  % cas de base : quand il ne reste qu'un seul �l�ment.
my_last(E, [_|D]):-
    my_last(E, D). %l'appel r�cursif � la fonction.

%question 04
penultimate(E, [E,_]).  % cas de base : la liste contient que deux �l�ments ou E est l'avant-dernier.
penultimate(E, [_|T]):-
    penultimate(E, T).  %le cas r�cursif

%question 05
del_k(X, [X|T], 1, T).  % cas de base: K est la premi�re position de la liste, donc on supprime X (la t�te de la liste)
del_k(X, [H|T], K, [H|R]):-
    K > 1,
    K1 is K - 1,  % Calcul de K1
    del_k(X, T, K1, R).  % R�cursion pour supprimer l'�l�ment � la position K.

%question 06
len([], 0).  %cas de base
len([_|L], N):-  %cas r�cursif
    len(L, N1),
    N is N1 + 1.

%question 07
even([]).  % cas de base : la liste est vide.
even([_,_|T]):-
    even(T).  % cas r�cursif.

%question 08
concant([], L, L).  %cas de base : la premi�re liste est vide.
concant([H|T], L, [H|D]):-
    concant(T, L, D).  %cas r�cursif.

%question 09
palindrome(L):-
    reverse(L, L).  % fonction int�gr�e pour inverser la liste et v�rifier si c'est un palindrome.

%2�me m�thode pour question 09
palindr([]).  % cas de base.
palindr([_]).  %cas de base.

palindr([H|T]):-   %cas r�cursif.
    append(Middle, [H], T),
    palindr(Middle).
