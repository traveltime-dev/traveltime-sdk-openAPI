-module(openapi_response_time_filter_result).

-export([encode/1]).

-export_type([openapi_response_time_filter_result/0]).

-type openapi_response_time_filter_result() ::
    #{ 'search_id' := binary(),
       'locations' := list(),
       'unreachable' := list()
     }.

encode(#{ 'search_id' := SearchId,
          'locations' := Locations,
          'unreachable' := Unreachable
        }) ->
    #{ 'search_id' => SearchId,
       'locations' => Locations,
       'unreachable' => Unreachable
     }.
