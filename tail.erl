-module(tail).
-export([fib/1,perfect/1]).

fib(N) when N >= 0, N < 2 -> N;
fib(N) -> fib(N,0,1).

fib(0,_,B) -> B;
fib(N,A,B) -> fib(N-1,B,A+B).

perfect(N) -> perfect(N,N-1,0).

perfect(N,0,B) -> N == B;
perfect(N,A,B) when N rem A == 0 -> perfect(N,A-1,B+A);
perfect(N,A,B) -> perfect(N,A-1,B).
