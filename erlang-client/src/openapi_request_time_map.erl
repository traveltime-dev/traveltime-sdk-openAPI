-module(openapi_request_time_map).

-export([encode/1]).

-export_type([openapi_request_time_map/0]).

-type openapi_request_time_map() ::
    #{ 'departure_searches' => list(),
       'arrival_searches' => list(),
       'unions' => list(),
       'intersections' => list()
     }.

encode(#{ 'departure_searches' := DepartureSearches,
          'arrival_searches' := ArrivalSearches,
          'unions' := Unions,
          'intersections' := Intersections
        }) ->
    #{ 'departure_searches' => DepartureSearches,
       'arrival_searches' => ArrivalSearches,
       'unions' => Unions,
       'intersections' => Intersections
     }.
