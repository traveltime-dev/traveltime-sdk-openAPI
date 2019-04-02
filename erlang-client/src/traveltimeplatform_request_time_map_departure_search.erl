-module(traveltimeplatform_request_time_map_departure_search).

-export([encode/1]).

-export_type([traveltimeplatform_request_time_map_departure_search/0]).

-type traveltimeplatform_request_time_map_departure_search() ::
    #{ 'id' := binary(),
       'coords' := traveltimeplatform_coords:traveltimeplatform_coords(),
       'transportation' := traveltimeplatform_request_transportation:traveltimeplatform_request_transportation(),
       'travel_time' := integer(),
       'departure_time' := traveltimeplatform_date_time:traveltimeplatform_date_time(),
       'properties' => list(),
       'range' => traveltimeplatform_request_range_no_max_results:traveltimeplatform_request_range_no_max_results()
     }.

encode(#{ 'id' := Id,
          'coords' := Coords,
          'transportation' := Transportation,
          'travel_time' := TravelTime,
          'departure_time' := DepartureTime,
          'properties' := Properties,
          'range' := Range
        }) ->
    #{ 'id' => Id,
       'coords' => Coords,
       'transportation' => Transportation,
       'travel_time' => TravelTime,
       'departure_time' => DepartureTime,
       'properties' => Properties,
       'range' => Range
     }.
