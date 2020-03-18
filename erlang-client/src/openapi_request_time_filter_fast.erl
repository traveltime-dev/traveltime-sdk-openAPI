-module(openapi_request_time_filter_fast).

-export([encode/1]).

-export_type([openapi_request_time_filter_fast/0]).

-type openapi_request_time_filter_fast() ::
    #{ 'locations' := list(),
       'arrival_searches' := openapi_request_time_filter_fast_arrival_searches:openapi_request_time_filter_fast_arrival_searches()
     }.

encode(#{ 'locations' := Locations,
          'arrival_searches' := ArrivalSearches
        }) ->
    #{ 'locations' => Locations,
       'arrival_searches' => ArrivalSearches
     }.
