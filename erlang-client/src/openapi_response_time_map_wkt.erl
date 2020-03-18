-module(openapi_response_time_map_wkt).

-export([encode/1]).

-export_type([openapi_response_time_map_wkt/0]).

-type openapi_response_time_map_wkt() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
