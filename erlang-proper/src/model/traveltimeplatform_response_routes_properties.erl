-module(traveltimeplatform_response_routes_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_routes_properties/0]).

-export_type([traveltimeplatform_response_routes_properties/0]).

-type traveltimeplatform_response_routes_properties() ::
  [ {'travel_time', integer() }
  | {'distance', integer() }
  | {'fares', traveltimeplatform_response_fares:traveltimeplatform_response_fares() }
  | {'route', traveltimeplatform_response_route:traveltimeplatform_response_route() }
  ].

traveltimeplatform_response_routes_properties() ->
  [ {'travel_time', integer() }
  , {'distance', integer() }
  , {'fares', traveltimeplatform_response_fares:traveltimeplatform_response_fares() }
  , {'route', traveltimeplatform_response_route:traveltimeplatform_response_route() }
  ].
