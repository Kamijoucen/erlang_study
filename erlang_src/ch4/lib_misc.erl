-module(lib_misc).
-export([for/3, test/0]).

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I) | for(I + 1, Max, F)].

test() ->
    [1, 2, 3, 4, 5] = for(1, 5, fun(I) -> I end).
