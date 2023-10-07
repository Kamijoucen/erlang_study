-module(fun_test).
-export([area/1, test/0]).

test() ->
    12 = area({rectangle, 3, 4}),
    144 = area({square, 12}),
    tests_worked.

area({rectangle, W, H}) -> W * H;
area({square, Side}) -> Side * Side.
