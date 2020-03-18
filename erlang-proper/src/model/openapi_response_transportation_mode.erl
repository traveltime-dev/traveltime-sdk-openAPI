-module(openapi_response_transportation_mode).

-include("openapi.hrl").

-export([openapi_response_transportation_mode/0]).

-export_type([openapi_response_transportation_mode/0]).

-type openapi_response_transportation_mode() ::
  binary().

openapi_response_transportation_mode() ->
  elements([<<"car">>, <<"parking">>, <<"boarding">>, <<"walk">>, <<"bike">>, <<"train">>, <<"rail_national">>, <<"rail_overground">>, <<"rail_underground">>, <<"rail_dlr">>, <<"bus">>, <<"cable_car">>, <<"plane">>, <<"ferry">>, <<"coach">>]).

