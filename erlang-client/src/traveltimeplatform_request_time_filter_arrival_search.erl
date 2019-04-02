-module(traveltimeplatform_request_time_filter_arrival_search).

-export([encode/1]).

-export_type([traveltimeplatform_request_time_filter_arrival_search/0]).

-type traveltimeplatform_request_time_filter_arrival_search() ::
    #{ 'id' := binary(),
       'departure_location_ids' := list(),
       'arrival_location_id' := binary(),
       'transportation' := traveltimeplatform_request_transportation:traveltimeplatform_request_transportation(),
       'travel_time' := integer(),
       'arrival_time' := traveltimeplatform_date_time:traveltimeplatform_date_time(),
       'properties' := list(),
       'range' => traveltimeplatform_request_range_full:traveltimeplatform_request_range_full()
     }.

encode(#{ 'id' := Id,
          'departure_location_ids' := DepartureLocationIds,
          'arrival_location_id' := ArrivalLocationId,
          'transportation' := Transportation,
          'travel_time' := TravelTime,
          'arrival_time' := ArrivalTime,
          'properties' := Properties,
          'range' := Range
        }) ->
    #{ 'id' => Id,
       'departure_location_ids' => DepartureLocationIds,
       'arrival_location_id' => ArrivalLocationId,
       'transportation' => Transportation,
       'travel_time' => TravelTime,
       'arrival_time' => ArrivalTime,
       'properties' => Properties,
       'range' => Range
     }.
