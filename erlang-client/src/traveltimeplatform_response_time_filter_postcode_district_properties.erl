-module(traveltimeplatform_response_time_filter_postcode_district_properties).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_district_properties/0]).

-type traveltimeplatform_response_time_filter_postcode_district_properties() ::
    #{ 'travel_time_reachable' => traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics(),
       'travel_time_all' => traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics(),
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
