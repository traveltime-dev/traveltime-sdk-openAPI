-module(openapi_response_time_filter_postcode_sector_properties).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcode_sector_properties/0]).

-type openapi_response_time_filter_postcode_sector_properties() ::
    #{ 'travel_time_reachable' => openapi_response_travel_time_statistics:openapi_response_travel_time_statistics(),
       'travel_time_all' => openapi_response_travel_time_statistics:openapi_response_travel_time_statistics(),
       'coverage' => float()
     }.

encode(#{ 'travel_time_reachable' := TravelTimeReachable,
          'travel_time_all' := TravelTimeAll,
          'coverage' := Coverage
        }) ->
    #{ 'travel_time_reachable' => TravelTimeReachable,
       'travel_time_all' => TravelTimeAll,
       'coverage' => Coverage
     }.
