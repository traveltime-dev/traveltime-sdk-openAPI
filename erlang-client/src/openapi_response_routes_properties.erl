-module(openapi_response_routes_properties).

-export([encode/1]).

-export_type([openapi_response_routes_properties/0]).

-type openapi_response_routes_properties() ::
    #{ 'travel_time' => integer(),
       'distance' => integer(),
       'fares' => openapi_response_fares:openapi_response_fares(),
       'route' => openapi_response_route:openapi_response_route()
     }.

encode(#{ 'travel_time' := TravelTime,
          'distance' := Distance,
          'fares' := Fares,
          'route' := Route
        }) ->
    #{ 'travel_time' => TravelTime,
       'distance' => Distance,
       'fares' => Fares,
       'route' => Route
     }.
