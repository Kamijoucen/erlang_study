-module(world).
-export([start/0]).

start() -> 
    Lsc = spawn(person, init, ["lisicen"]),
    JJ  = spawn(person, init, ["jiajing"]).

