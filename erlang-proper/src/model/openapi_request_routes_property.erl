-module(openapi_request_routes_property).

-include("openapi.hrl").

-export([openapi_request_routes_property/0]).

-export_type([openapi_request_routes_property/0]).

-type openapi_request_routes_property() ::
  binary().

openapi_request_routes_property() ->
  elements([<<"travel_time">>, <<"distance">>, <<"fares">>, <<"route">>]).

