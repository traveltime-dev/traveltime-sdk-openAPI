-module(openapi_request_time_filter_postcodes).

-export([encode/1]).

-export_type([openapi_request_time_filter_postcodes/0]).

-type openapi_request_time_filter_postcodes() ::
    #{ 'departure_searches' => list(),
       'arrival_searches' => list()
     }.

encode(#{ 'departure_searches' := DepartureSearches,
          'arrival_searches' := ArrivalSearches
        }) ->
    #{ 'departure_searches' => DepartureSearches,
       'arrival_searches' => ArrivalSearches
     }.
