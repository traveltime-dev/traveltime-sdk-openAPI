-module(traveltimeplatform_response_time_filter_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_properties/0]).

-export_type([traveltimeplatform_response_time_filter_properties/0]).

-type traveltimeplatform_response_time_filter_properties() ::
  [ {'travel_time', integer() }
  | {'distance', integer() }
  | {'distance_breakdown', list(traveltimeplatform_response_distance_breakdown_item:traveltimeplatform_response_distance_breakdown_item()) }
  | {'fares', traveltimeplatform_response_fares:traveltimeplatform_response_fares() }
  | {'route', traveltimeplatform_response_route:traveltimeplatform_response_route() }
  ].

traveltimeplatform_response_time_filter_properties() ->
  [ {'travel_time', integer() }
  , {'distance', integer() }
  , {'distance_breakdown', list(traveltimeplatform_response_distance_breakdown_item:traveltimeplatform_response_distance_breakdown_item()) }
  , {'fares', traveltimeplatform_response_fares:traveltimeplatform_response_fares() }
  , {'route', traveltimeplatform_response_route:traveltimeplatform_response_route() }
  ].
