-module(openapi_request_time_filter_postcode_districts_arrival_search).

-export([encode/1]).

-export_type([openapi_request_time_filter_postcode_districts_arrival_search/0]).

-type openapi_request_time_filter_postcode_districts_arrival_search() ::
    #{ 'id' := binary(),
       'transportation' := openapi_request_transportation:openapi_request_transportation(),
       'travel_time' := integer(),
       'arrival_time' := openapi_date_time:openapi_date_time(),
       'reachable_postcodes_threshold' := float(),
       'properties' := list(),
       'range' => openapi_request_range_full:openapi_request_range_full()
     }.

encode(#{ 'id' := Id,
          'transportation' := Transportation,
          'travel_time' := TravelTime,
          'arrival_time' := ArrivalTime,
          'reachable_postcodes_threshold' := ReachablePostcodesThreshold,
          'properties' := Properties,
          'range' := Range
        }) ->
    #{ 'id' => Id,
       'transportation' => Transportation,
       'travel_time' => TravelTime,
       'arrival_time' => ArrivalTime,
       'reachable_postcodes_threshold' => ReachablePostcodesThreshold,
       'properties' => Properties,
       'range' => Range
     }.
