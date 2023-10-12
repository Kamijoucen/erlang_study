-module(filter).
-export([
    case_filter/2,
    filter/2
]).

case_filter(F, [H | T]) ->
    case (F(H)) of
        true -> [H | case_filter(F, T)];
        false -> case_filter(F, T)
    end;
case_filter(_, []) ->
    [].

filter(F, [H | T]) -> filter1(F(H), F, H, T);
filter(_, []) -> [].

filter1(true, F, H, T) -> [H | filter(F, T)];
filter1(false, F, _, T) -> filter(F, T).
