-module(work).
-export([get_sheet/0, find_2_name/0, append_name/0, append_name2/0]).

get_sheet() -> [{house, 1, "name1"}, {house, 2, "name2"}, {house, 3, "name3"}].

find_2_name() ->
    [_, A | _] = get_sheet(),
    A.

append_name() ->
    A = get_sheet(),
    [{house, 4, "name4"} | A].

append_name2() ->
    A = get_sheet(),
    [A | {house, 5, "name5"}].
