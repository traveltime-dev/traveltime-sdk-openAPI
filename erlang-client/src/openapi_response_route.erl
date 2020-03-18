-module(openapi_response_route).

-export([encode/1]).

-export_type([openapi_response_route/0]).

-type openapi_response_route() ::
    #{ 'departure_time' := openapi_date_time:openapi_date_time(),
       'arrival_time' := openapi_date_time:openapi_date_time(),
       'parts' := list()
     }.

encode(#{ 'departure_time' := DepartureTime,
          'arrival_time' := ArrivalTime,
          'parts' := Parts
        }) ->
    #{ 'departure_time' => DepartureTime,
       'arrival_time' => ArrivalTime,
       'parts' => Parts
     }.
