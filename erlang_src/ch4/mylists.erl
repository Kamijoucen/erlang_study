-module(mylists).
-export([sum/1, map/2, test/0]).

sum([]) -> 0;
sum([H | T]) -> H + sum(T).

map(_, []) -> [];
map(F, [H | T]) -> [F(H) | map(F, T)].

test() ->
    5050 = sum(lib_misc:for(1, 100, fun(I) -> I end)).