-module(traveltimeplatform_response_time_map).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_map/0]).

-type traveltimeplatform_response_time_map() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
