-module(wk2_2).
-export([double/1,evens/1]).

double([]) -> [];
double([X|Xs]) -> [2*X|double(Xs)].

evens([]) -> [];
evens([X|Xs]) when X rem 2 == 0 -> [X|evens(Xs)];
evens([_X|Xs]) -> evens(Xs).
