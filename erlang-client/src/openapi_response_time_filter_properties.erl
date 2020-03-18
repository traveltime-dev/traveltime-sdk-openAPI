-module(openapi_response_time_filter_properties).

-export([encode/1]).

-export_type([openapi_response_time_filter_properties/0]).

-type openapi_response_time_filter_properties() ::
    #{ 'travel_time' => integer(),
       'distance' => integer(),
       'distance_breakdown' => list(),
       'fares' => openapi_response_fares:openapi_response_fares(),
       'route' => openapi_response_route:openapi_response_route()
     }.

encode(#{ 'travel_time' := TravelTime,
          'distance' := Distance,
          'distance_breakdown' := DistanceBreakdown,
          'fares' := Fares,
          'route' := Route
        }) ->
    #{ 'travel_time' => TravelTime,
       'distance' => Distance,
       'distance_breakdown' => DistanceBreakdown,
       'fares' => Fares,
       'route' => Route
     }.
