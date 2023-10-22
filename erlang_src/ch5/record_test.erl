-module(record_test).
-export([
    test1/0,
    test2/0,
    test3/0,
    unbox_record/1,
    unbox_record2/1,
    pattern_fun/1
]).

-include("records.hrl").

test1() ->
    #todo{}.

test2() ->
    #todo{status = delete, who = jj, text = "测试"}.

test3() ->
    X1 = test2(),
    #todo{status = S, who = P} = X1,
    {S, P}.

unbox_record(#todo{status = S, who = P, text = T}) ->
    {S, P, T}.
unbox_record2(#todo{status = S, who = P, text = T} = R) ->
    {S, P, T, R}.

pattern_fun(#todo{status = todo} = R) ->
    #todo{status = _, who = T} = R,
    {a, T};
pattern_fun(#todo{status = create} = R) ->
    #todo{status = _, who = T} = R,
    {b, T}.
