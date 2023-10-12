-module(hello).
-export([
    test/0,
    test3/0,
    test4/0,
    test5/0
]).

test() ->
    test1(),
    test2()
.

test1() ->
    V = [1, 2, 3, 4, 5],
    [2 * I || I <- V].

test2() ->
    Buy = [{oranges, 4}, {apples, 10}, {pears, 6}, {milk, 3}],
    [{Name, I * 2} || {Name, I} <- Buy].

% filter
test3() ->
    [X || {a, X} <- [{a, 1}, {b, 2}, {c, 3}, {a, 4}, hello, "wow"]].

test4() ->
    list_to_tuple([1, 2, 3]).

test5() ->
    A = [1, 2, 3],
    B = [a, b, c],
    [{X, Y} || X <- A, Y <- B].

