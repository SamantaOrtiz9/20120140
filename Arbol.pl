padre(juan, pedro).
padre(juan, maria).
padre(pedro, ana).
padre(pedro, luis).
padre(luis, carlos).
madre(ana, laura).
madre(laura, pablo).

abuelo(Abuelo, Nieto) :-
    padre(Abuelo, Padre),
    padre(Padre, Nieto).

abuela(Abuela, Nieto) :-
    madre(Abuela, Madre),
    madre(Madre, Nieto).

hermano(Hermano1, Hermano2) :-
    padre(Padre, Hermano1),
    padre(Padre, Hermano2),
    Hermano1 \= Hermano2.

hermana(Hermana1, Hermana2) :-
    madre(Madre, Hermana1),
    madre(Madre, Hermana2),
    Hermana1 \= Hermana2.
