-module(openapi_response_map_info).

-export([encode/1]).

-export_type([openapi_response_map_info/0]).

-type openapi_response_map_info() ::
    #{ 'maps' := list()
     }.

encode(#{ 'maps' := Maps
        }) ->
    #{ 'maps' => Maps
     }.
