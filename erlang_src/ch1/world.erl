-module(world).
-export([start/0]).

start() -> 
    Lsc = spawn(person, init, ["lisicen"]),
    JJ  = spawn(person, init, ["jiajing"]),
    Lsc ! {self(), "hello lsc!"},
    JJ  ! {self(), "hello jj!"}.

