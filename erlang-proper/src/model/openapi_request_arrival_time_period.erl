-module(openapi_request_arrival_time_period).

-include("openapi.hrl").

-export([openapi_request_arrival_time_period/0]).

-export_type([openapi_request_arrival_time_period/0]).

-type openapi_request_arrival_time_period() ::
  binary().

openapi_request_arrival_time_period() ->
  elements([<<"weekday_morning">>]).

