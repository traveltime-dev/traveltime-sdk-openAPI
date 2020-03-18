-module(openapi_request_time_filter_fast_arrival_one_to_many_search).

-export([encode/1]).

-export_type([openapi_request_time_filter_fast_arrival_one_to_many_search/0]).

-type openapi_request_time_filter_fast_arrival_one_to_many_search() ::
    #{ 'id' := binary(),
       'departure_location_id' := binary(),
       'arrival_location_ids' := list(),
       'transportation' := openapi_request_transportation_fast:openapi_request_transportation_fast(),
       'travel_time' := integer(),
       'arrival_time_period' := openapi_request_arrival_time_period:openapi_request_arrival_time_period(),
       'properties' := list()
     }.

encode(#{ 'id' := Id,
          'departure_location_id' := DepartureLocationId,
          'arrival_location_ids' := ArrivalLocationIds,
          'transportation' := Transportation,
          'travel_time' := TravelTime,
          'arrival_time_period' := ArrivalTimePeriod,
          'properties' := Properties
        }) ->
    #{ 'id' => Id,
       'departure_location_id' => DepartureLocationId,
       'arrival_location_ids' => ArrivalLocationIds,
       'transportation' => Transportation,
       'travel_time' => TravelTime,
       'arrival_time_period' => ArrivalTimePeriod,
       'properties' => Properties
     }.
