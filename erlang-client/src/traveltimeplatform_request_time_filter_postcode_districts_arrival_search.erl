-module(traveltimeplatform_request_time_filter_postcode_districts_arrival_search).

-export([encode/1]).

-export_type([traveltimeplatform_request_time_filter_postcode_districts_arrival_search/0]).

-type traveltimeplatform_request_time_filter_postcode_districts_arrival_search() ::
    #{ 'id' := binary(),
       'transportation' := traveltimeplatform_request_transportation:traveltimeplatform_request_transportation(),
       'travel_time' := integer(),
       'arrival_time' := traveltimeplatform_date_time:traveltimeplatform_date_time(),
       'reachable_postcodes_threshold' := float(),
       'properties' := list(),
       'range' => traveltimeplatform_request_range_full:traveltimeplatform_request_range_full()
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
