-module(traveltimeplatform_request_routes_property).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_routes_property/0]).

-export_type([traveltimeplatform_request_routes_property/0]).

-type traveltimeplatform_request_routes_property() ::
  binary().

traveltimeplatform_request_routes_property() ->
  elements([<<"travel_time">>, <<"distance">>, <<"fares">>, <<"route">>]).

