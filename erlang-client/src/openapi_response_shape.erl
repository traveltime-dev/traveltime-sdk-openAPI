-module(openapi_response_shape).

-export([encode/1]).

-export_type([openapi_response_shape/0]).

-type openapi_response_shape() ::
    #{ 'shell' := list(),
       'holes' := list()
     }.

encode(#{ 'shell' := Shell,
          'holes' := Holes
        }) ->
    #{ 'shell' => Shell,
       'holes' => Holes
     }.
