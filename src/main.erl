%%%-------------------------------------------------------------------
%%% @author doctor
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 17. Nov 2016 2:00
%%%-------------------------------------------------------------------
-module(main).
-author("doctor").

-include_lib("inets/examples/httpd_load_test/hdlt.erl").
%% API

-export([for/2,start/0]).



for(0,_) ->
  [];

for(N,Term) when N > 0 ->
  io:fwrite("Hello~n"),
  [Term|for(N-1,Term)].

start() ->
  for(10,1).