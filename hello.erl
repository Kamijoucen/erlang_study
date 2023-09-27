-module(hello).
-author("admin").

hello() ->
    io:format("hello erlang!~n").

calc(add, A, B) -> A + B;
calc(sub, A, B) -> A - B.

cost(apple) -> 5;
cost(banana) -> 6;
cost(peach) -> 10.

shop([]) -> 0;
shop([{Name, Num} | T]) -> cost(Name) * Num + shop(T).

% -export([hello/0]).
-compile(export_all).
