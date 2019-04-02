-module(traveltimeplatform_response_routes_properties).

-export([encode/1]).

-export_type([traveltimeplatform_response_routes_properties/0]).

-type traveltimeplatform_response_routes_properties() ::
    #{ 'travel_time' => integer(),
       'distance' => integer(),
       'fares' => traveltimeplatform_response_fares:traveltimeplatform_response_fares(),
       'route' => traveltimeplatform_response_route:traveltimeplatform_response_route()
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
