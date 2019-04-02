-module(traveltimeplatform_response_routes_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_routes_result/0]).

-export_type([traveltimeplatform_response_routes_result/0]).

-type traveltimeplatform_response_routes_result() ::
  [ {'search_id', binary() }
  | {'locations', list(traveltimeplatform_response_routes_location:traveltimeplatform_response_routes_location()) }
  | {'unreachable', list(binary()) }
  ].

traveltimeplatform_response_routes_result() ->
  [ {'search_id', binary() }
  , {'locations', list(traveltimeplatform_response_routes_location:traveltimeplatform_response_routes_location()) }
  , {'unreachable', list(binary()) }
  ].
