-module(second).
-export([hypotenuse/2, rtPerimiter/2, rtArea/2]).

hypotenuse(A,B) ->
    C = first:square(A) + first:square(B),
    math:sqrt(C).

rtPerimiter(A,B) ->
    C = hypotenuse(A,B),
    A + B + C.

rtArea(A,B) ->
    C = hypotenuse(A,B),
    first:area(A,B,C).
