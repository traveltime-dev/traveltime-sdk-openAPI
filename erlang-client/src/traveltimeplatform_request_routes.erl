-module(traveltimeplatform_request_routes).

-export([encode/1]).

-export_type([traveltimeplatform_request_routes/0]).

-type traveltimeplatform_request_routes() ::
    #{ 'locations' := list(),
       'departure_searches' => list(),
       'arrival_searches' => list()
     }.

encode(#{ 'locations' := Locations,
          'departure_searches' := DepartureSearches,
          'arrival_searches' := ArrivalSearches
        }) ->
    #{ 'locations' => Locations,
       'departure_searches' => DepartureSearches,
       'arrival_searches' => ArrivalSearches
     }.
