-module(openapi_request_time_map_property).

-include("openapi.hrl").

-export([openapi_request_time_map_property/0]).

-export_type([openapi_request_time_map_property/0]).

-type openapi_request_time_map_property() ::
  binary().

openapi_request_time_map_property() ->
  elements([<<"is_only_walking">>]).

