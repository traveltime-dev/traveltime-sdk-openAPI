-module(traveltimeplatform_request_routes_arrival_search).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_routes_arrival_search/0]).

-export_type([traveltimeplatform_request_routes_arrival_search/0]).

-type traveltimeplatform_request_routes_arrival_search() ::
  [ {'id', binary() }
  | {'departure_location_ids', list(binary()) }
  | {'arrival_location_id', binary() }
  | {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
  | {'arrival_time', datetime() }
  | {'properties', list(traveltimeplatform_request_routes_property:traveltimeplatform_request_routes_property()) }
  | {'range', traveltimeplatform_request_range_full:traveltimeplatform_request_range_full() }
  ].

traveltimeplatform_request_routes_arrival_search() ->
  [ {'id', binary() }
  , {'departure_location_ids', list(binary(), 1, 2) }
  , {'arrival_location_id', binary() }
  , {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
  , {'arrival_time', datetime() }
  , {'properties', list(traveltimeplatform_request_routes_property:traveltimeplatform_request_routes_property()) }
  , {'range', traveltimeplatform_request_range_full:traveltimeplatform_request_range_full() }
  ].
