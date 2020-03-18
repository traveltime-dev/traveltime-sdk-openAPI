-module(openapi_request_routes_arrival_search).

-export([encode/1]).

-export_type([openapi_request_routes_arrival_search/0]).

-type openapi_request_routes_arrival_search() ::
    #{ 'id' := binary(),
       'departure_location_ids' := list(),
       'arrival_location_id' := binary(),
       'transportation' := openapi_request_transportation:openapi_request_transportation(),
       'arrival_time' := openapi_date_time:openapi_date_time(),
       'properties' := list(),
       'range' => openapi_request_range_full:openapi_request_range_full()
     }.

encode(#{ 'id' := Id,
          'departure_location_ids' := DepartureLocationIds,
          'arrival_location_id' := ArrivalLocationId,
          'transportation' := Transportation,
          'arrival_time' := ArrivalTime,
          'properties' := Properties,
          'range' := Range
        }) ->
    #{ 'id' => Id,
       'departure_location_ids' => DepartureLocationIds,
       'arrival_location_id' => ArrivalLocationId,
       'transportation' => Transportation,
       'arrival_time' => ArrivalTime,
       'properties' => Properties,
       'range' => Range
     }.
