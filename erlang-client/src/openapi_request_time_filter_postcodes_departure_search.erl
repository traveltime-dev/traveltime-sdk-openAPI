-module(openapi_request_time_filter_postcodes_departure_search).

-export([encode/1]).

-export_type([openapi_request_time_filter_postcodes_departure_search/0]).

-type openapi_request_time_filter_postcodes_departure_search() ::
    #{ 'id' := binary(),
       'transportation' := openapi_request_transportation:openapi_request_transportation(),
       'travel_time' := integer(),
       'departure_time' := openapi_date_time:openapi_date_time(),
       'properties' := list(),
       'range' => openapi_request_range_full:openapi_request_range_full()
     }.

encode(#{ 'id' := Id,
          'transportation' := Transportation,
          'travel_time' := TravelTime,
          'departure_time' := DepartureTime,
          'properties' := Properties,
          'range' := Range
        }) ->
    #{ 'id' => Id,
       'transportation' => Transportation,
       'travel_time' => TravelTime,
       'departure_time' => DepartureTime,
       'properties' => Properties,
       'range' => Range
     }.
