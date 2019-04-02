-module(traveltimeplatform_request_time_filter_fast).

-export([encode/1]).

-export_type([traveltimeplatform_request_time_filter_fast/0]).

-type traveltimeplatform_request_time_filter_fast() ::
    #{ 'locations' := list(),
       'arrival_searches' := traveltimeplatform_request_time_filter_fast_arrival_searches:traveltimeplatform_request_time_filter_fast_arrival_searches()
     }.

encode(#{ 'locations' := Locations,
          'arrival_searches' := ArrivalSearches
        }) ->
    #{ 'locations' => Locations,
       'arrival_searches' => ArrivalSearches
     }.
