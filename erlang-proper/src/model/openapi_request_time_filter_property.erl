-module(openapi_request_time_filter_property).

-include("openapi.hrl").

-export([openapi_request_time_filter_property/0]).

-export_type([openapi_request_time_filter_property/0]).

-type openapi_request_time_filter_property() ::
  binary().

openapi_request_time_filter_property() ->
  elements([<<"travel_time">>, <<"distance">>, <<"distance_breakdown">>, <<"fares">>, <<"route">>]).

