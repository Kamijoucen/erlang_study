-module(lib_misc).
-export([
    for/3,
    test/0,
    qsort/1,
    pythag/1,
    perms/1,
    odds_and_evens1/1,
    odds_and_evens2/1
]).

for(Max, Max, F) -> [F(Max)];
for(I, Max, F) -> [F(I) | for(I + 1, Max, F)].

qsort([]) ->
    [];
qsort([Pivot | T]) ->
    qsort([X || X <- T, X < Pivot]) ++
        [Pivot] ++
        qsort([X || X <- T, X >= Pivot]).

pythag(N) ->
    [
        {A, B, C}
     || A <- lists:seq(1, N),
        B <- lists:seq(1, N),
        C <- lists:seq(1, N),
        A + B + C =< N,
        A * A + B * B =:= C * C
    ].

perms([]) -> [[]];
perms(L) -> [[H | T] || H <- L, T <- perms(L -- [H])].

test() ->
    [1, 2, 3, 4, 5] = for(1, 5, fun(I) -> I end).

odds_and_evens1(L) ->
    Odds = [X || X <- L, (X rem 2) =:= 1],
    Evens = [X || X <- L, (X rem 2) =:= 0],
    {Odds, Evens}.

odds_and_evens2(L) -> odds_and_evens_acc(L, [], []).

odds_and_evens_acc([H | T], Odds, Evens) ->
    case H rem 2 of
        1 -> odds_and_evens_acc(T, [H | Odds], Evens);
        0 -> odds_and_evens_acc(T, Odds, [H | Evens])
    end;
odds_and_evens_acc([], Odds, Evens) ->
    {lists:reverse(Odds), lists:reverse(Evens)}.


% TODO
a(L) -> tuple_to_list(L).