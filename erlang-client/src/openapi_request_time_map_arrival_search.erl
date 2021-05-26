-module(openapi_request_time_map_arrival_search).

-export([encode/1]).

-export_type([openapi_request_time_map_arrival_search/0]).

-type openapi_request_time_map_arrival_search() ::
    #{ 'id' := binary(),
       'coords' := openapi_coords:openapi_coords(),
       'transportation' := openapi_request_transportation:openapi_request_transportation(),
       'travel_time' := integer(),
       'arrival_time' := openapi_date_time:openapi_date_time(),
       'properties' => list(),
       'range' => openapi_request_range_no_max_results:openapi_request_range_no_max_results(),
       'level_of_detail' => openapi_request_level_of_detail:openapi_request_level_of_detail()
     }.

encode(#{ 'id' := Id,
          'coords' := Coords,
          'transportation' := Transportation,
          'travel_time' := TravelTime,
          'arrival_time' := ArrivalTime,
          'properties' := Properties,
          'range' := Range,
          'level_of_detail' := LevelOfDetail
        }) ->
    #{ 'id' => Id,
       'coords' => Coords,
       'transportation' => Transportation,
       'travel_time' => TravelTime,
       'arrival_time' => ArrivalTime,
       'properties' => Properties,
       'range' => Range,
       'level_of_detail' => LevelOfDetail
     }.
