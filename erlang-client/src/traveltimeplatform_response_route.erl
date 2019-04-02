-module(traveltimeplatform_response_route).

-export([encode/1]).

-export_type([traveltimeplatform_response_route/0]).

-type traveltimeplatform_response_route() ::
    #{ 'departure_time' := traveltimeplatform_date_time:traveltimeplatform_date_time(),
       'arrival_time' := traveltimeplatform_date_time:traveltimeplatform_date_time(),
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
