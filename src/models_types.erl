%%
%% Autogenerated by Thrift Compiler (0.9.0)
%%
%% DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
%%

-module(models_types).

-include("models_types.hrl").

-export([struct_info/1, struct_info_ext/1]).

struct_info('message') ->
  {struct, [{1, string},
          {2, string}]}
;

struct_info('i am a dummy struct') -> undefined.

struct_info_ext('message') ->
  {struct, [{1, undefined, string, 'url', undefined},
          {2, undefined, string, 'payload', undefined}]}
;

struct_info_ext('i am a dummy struct') -> undefined.
