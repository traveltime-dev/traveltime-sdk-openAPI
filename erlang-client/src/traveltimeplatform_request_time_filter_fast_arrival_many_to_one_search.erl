-module(traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search).

-export([encode/1]).

-export_type([traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search/0]).

-type traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search() ::
    #{ 'id' := binary(),
       'arrival_location_id' := binary(),
       'departure_location_ids' := list(),
       'transportation' := traveltimeplatform_request_transportation_fast:traveltimeplatform_request_transportation_fast(),
       'travel_time' := integer(),
       'arrival_time_period' := traveltimeplatform_request_arrival_time_period:traveltimeplatform_request_arrival_time_period(),
       'properties' := list()
     }.

encode(#{ 'id' := Id,
          'arrival_location_id' := ArrivalLocationId,
          'departure_location_ids' := DepartureLocationIds,
          'transportation' := Transportation,
          'travel_time' := TravelTime,
          'arrival_time_period' := ArrivalTimePeriod,
          'properties' := Properties
        }) ->
    #{ 'id' => Id,
       'arrival_location_id' => ArrivalLocationId,
       'departure_location_ids' => DepartureLocationIds,
       'transportation' => Transportation,
       'travel_time' => TravelTime,
       'arrival_time_period' => ArrivalTimePeriod,
       'properties' => Properties
     }.
