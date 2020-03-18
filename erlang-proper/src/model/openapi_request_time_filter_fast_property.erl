-module(openapi_request_time_filter_fast_property).

-include("openapi.hrl").

-export([openapi_request_time_filter_fast_property/0]).

-export_type([openapi_request_time_filter_fast_property/0]).

-type openapi_request_time_filter_fast_property() ::
  binary().

openapi_request_time_filter_fast_property() ->
  elements([<<"travel_time">>, <<"fares">>]).

