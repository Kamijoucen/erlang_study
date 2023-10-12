-module(guard).
-export([
    test/1,
    test1/1
]).

test(X) when (X == 0) or 1 / X == 2 -> X.
test1(X) when (X == 0) orelse 1 / X == 2 -> X.
