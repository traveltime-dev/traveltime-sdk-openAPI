-module(traveltimeplatform_response_time_filter_properties).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_properties/0]).

-type traveltimeplatform_response_time_filter_properties() ::
    #{ 'travel_time' => integer(),
       'distance' => integer(),
       'distance_breakdown' => list(),
       'fares' => traveltimeplatform_response_fares:traveltimeplatform_response_fares(),
       'route' => traveltimeplatform_response_route:traveltimeplatform_response_route()
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
