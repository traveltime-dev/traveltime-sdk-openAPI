-module(traveltimeplatform_response_routes).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_routes/0]).

-export_type([traveltimeplatform_response_routes/0]).

-type traveltimeplatform_response_routes() ::
  [ {'results', list(traveltimeplatform_response_routes_result:traveltimeplatform_response_routes_result()) }
  ].

traveltimeplatform_response_routes() ->
  [ {'results', list(traveltimeplatform_response_routes_result:traveltimeplatform_response_routes_result()) }
  ].
