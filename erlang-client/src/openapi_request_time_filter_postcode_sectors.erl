-module(openapi_request_time_filter_postcode_sectors).

-export([encode/1]).

-export_type([openapi_request_time_filter_postcode_sectors/0]).

-type openapi_request_time_filter_postcode_sectors() ::
    #{ 'departure_searches' => list(),
       'arrival_searches' => list()
     }.

encode(#{ 'departure_searches' := DepartureSearches,
          'arrival_searches' := ArrivalSearches
        }) ->
    #{ 'departure_searches' => DepartureSearches,
       'arrival_searches' => ArrivalSearches
     }.
