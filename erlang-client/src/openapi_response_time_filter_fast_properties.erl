-module(openapi_response_time_filter_fast_properties).

-export([encode/1]).

-export_type([openapi_response_time_filter_fast_properties/0]).

-type openapi_response_time_filter_fast_properties() ::
    #{ 'travel_time' => integer(),
       'fares' => openapi_response_fares_fast:openapi_response_fares_fast()
     }.

encode(#{ 'travel_time' := TravelTime,
          'fares' := Fares
        }) ->
    #{ 'travel_time' => TravelTime,
       'fares' => Fares
     }.
