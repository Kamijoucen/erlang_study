-module(work).
-export([get_sheet/0, find_2_name/0]).

get_sheet() -> [{house, 1, "name1"}, {house, 2, "name2"}, {house, 3, "name3"}].

find_2_name() ->
    [_, A | _] = get_sheet(),
    A.


