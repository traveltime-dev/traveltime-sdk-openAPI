-module(traveltimeplatform_response_time_filter_fast_properties).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_fast_properties/0]).

-type traveltimeplatform_response_time_filter_fast_properties() ::
    #{ 'travel_time' => integer(),
       'fares' => traveltimeplatform_response_fares_fast:traveltimeplatform_response_fares_fast()
     }.

encode(#{ 'travel_time' := TravelTime,
          'fares' := Fares
        }) ->
    #{ 'travel_time' => TravelTime,
       'fares' => Fares
     }.
