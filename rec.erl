-module(rec).
-export([fib/1]).

fib(N) when N >= 0, N < 2 -> N;
fib(N) -> fib(N - 1) + fib(N - 2).
