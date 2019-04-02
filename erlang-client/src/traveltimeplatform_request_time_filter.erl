-module(traveltimeplatform_request_time_filter).

-export([encode/1]).

-export_type([traveltimeplatform_request_time_filter/0]).

-type traveltimeplatform_request_time_filter() ::
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
