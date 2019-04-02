-module(traveltimeplatform_request_routes).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_routes/0]).

-export_type([traveltimeplatform_request_routes/0]).

-type traveltimeplatform_request_routes() ::
  [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location()) }
  | {'departure_searches', list(traveltimeplatform_request_routes_departure_search:traveltimeplatform_request_routes_departure_search()) }
  | {'arrival_searches', list(traveltimeplatform_request_routes_arrival_search:traveltimeplatform_request_routes_arrival_search()) }
  ].

traveltimeplatform_request_routes() ->
  [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location(), 1) }
  , {'departure_searches', list(traveltimeplatform_request_routes_departure_search:traveltimeplatform_request_routes_departure_search()) }
  , {'arrival_searches', list(traveltimeplatform_request_routes_arrival_search:traveltimeplatform_request_routes_arrival_search()) }
  ].
