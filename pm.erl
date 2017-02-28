-module(pm).
-export([perimiter/1,area/1,enclosure/1,linearBits/1,bits/1]).

%% Shape objects:
%%
%% {circle, Radius}
%% {rectangle, {Width,Height}}
%% {triangle, {Len1,Len2,Len3}}
%% {triangle, {Base,Height}}

perimiter({circle, R}) ->
    math:pi() * 2*R;
perimiter({rectangle, {W, H}}) ->
    2*W + 2*H;
perimiter({triangle, {A,B,C}}) ->
    A+B+C.

area({triangle, {B,H}}) -> (B*H)/2.

enclosure({circle, R}) ->
    {rectangle, {R,R}};
enclosure({rectangle, {W,H}}) ->
    {rectangle, {W,H}};
enclosure({triangle, {B,H}}) ->
    {rectangle, {B,H}}.

%%
%% bits() Linear Recursion
%%

linearBits(N) when N > 0 ->
    N rem 2 + bits(N div 2).

%%
%% bits() Iterative/Tail Recursion
%%

%% bits(Number)
bits(N) -> bits(N,0).

%% bits(Number,Sum)
bits(0,S) -> S;
bits(N,S) -> bits(N div 2, S + N rem 2).
