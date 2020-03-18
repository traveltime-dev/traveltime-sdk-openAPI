-module(openapi_response_time_map).

-export([encode/1]).

-export_type([openapi_response_time_map/0]).

-type openapi_response_time_map() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
