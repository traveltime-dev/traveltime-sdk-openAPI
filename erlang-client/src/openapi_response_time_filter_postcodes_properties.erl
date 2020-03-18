-module(openapi_response_time_filter_postcodes_properties).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcodes_properties/0]).

-type openapi_response_time_filter_postcodes_properties() ::
    #{ 'travel_time' => integer(),
       'distance' => integer()
     }.

encode(#{ 'travel_time' := TravelTime,
          'distance' := Distance
        }) ->
    #{ 'travel_time' => TravelTime,
       'distance' => Distance
     }.
