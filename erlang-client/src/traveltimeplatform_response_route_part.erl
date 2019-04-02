-module(traveltimeplatform_response_route_part).

-export([encode/1]).

-export_type([traveltimeplatform_response_route_part/0]).

-type traveltimeplatform_response_route_part() ::
    #{ 'id' := binary(),
       'type' := binary(),
       'mode' := traveltimeplatform_response_transportation_mode:traveltimeplatform_response_transportation_mode(),
       'directions' := binary(),
       'distance' := integer(),
       'travel_time' := integer(),
       'coords' := list(),
       'direction' => binary(),
       'road' => binary(),
       'turn' => binary(),
       'line' => binary(),
       'departure_station' => binary(),
       'arrival_station' => binary(),
       'departs_at' => binary(),
       'arrives_at' => binary(),
       'num_stops' => integer()
     }.

encode(#{ 'id' := Id,
          'type' := Type,
          'mode' := Mode,
          'directions' := Directions,
          'distance' := Distance,
          'travel_time' := TravelTime,
          'coords' := Coords,
          'direction' := Direction,
          'road' := Road,
          'turn' := Turn,
          'line' := Line,
          'departure_station' := DepartureStation,
          'arrival_station' := ArrivalStation,
          'departs_at' := DepartsAt,
          'arrives_at' := ArrivesAt,
          'num_stops' := NumStops
        }) ->
    #{ 'id' => Id,
       'type' => Type,
       'mode' => Mode,
       'directions' => Directions,
       'distance' => Distance,
       'travel_time' => TravelTime,
       'coords' => Coords,
       'direction' => Direction,
       'road' => Road,
       'turn' => Turn,
       'line' => Line,
       'departure_station' => DepartureStation,
       'arrival_station' => ArrivalStation,
       'departs_at' => DepartsAt,
       'arrives_at' => ArrivesAt,
       'num_stops' => NumStops
     }.
