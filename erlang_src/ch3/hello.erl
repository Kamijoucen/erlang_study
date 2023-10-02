-module(hello).
-export([start/0, list_test/0]).

start() -> 
    P = {point, 10, 45},
    {point, X, Y} = p,
    io:format(X + Y).

list_test() ->
    P = [15, 45],
    P2 = [point | P].
    % P3 = [P | lisc].



