-module(traveltimeplatform_response_time_map_wkt).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_map_wkt/0]).

-type traveltimeplatform_response_time_map_wkt() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
