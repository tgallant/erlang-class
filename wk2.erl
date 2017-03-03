-module(wk2).
-export([product/1,productTail/1,listMax/1,listMaxTail/1]).

product([]) -> 1;
product([A|As]) -> A * product(As).

productTail(A) -> productTail(A, 1).

productTail([], P) -> P;
productTail([A|As], P) -> productTail(As, A*P).

listMax([]) -> 0;
listMax([A|As]) -> max(A, listMax(As)).

listMaxTail(A) -> listMaxTail(A,0).

listMaxTail([], M) -> M;
listMaxTail([A|As],M) -> listMaxTail(As, max(A,M)).
