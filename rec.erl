-module(rec).
-export([fib/1,pieces/1,pieces/2]).

fib(N) when N >= 0, N < 2 -> N;
fib(N) -> fib(N - 1) + fib(N - 2).

pieces(1) -> 2;
pieces(N) when N > 1 -> pieces(N-1)+N.

pieces(0,_) -> 1;
pieces(X,1) -> X+1;
pieces(X,N) -> pieces(X-1,N) + pieces(X-1,N-1).
