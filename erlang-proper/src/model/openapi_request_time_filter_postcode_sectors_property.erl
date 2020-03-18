-module(openapi_request_time_filter_postcode_sectors_property).

-include("openapi.hrl").

-export([openapi_request_time_filter_postcode_sectors_property/0]).

-export_type([openapi_request_time_filter_postcode_sectors_property/0]).

-type openapi_request_time_filter_postcode_sectors_property() ::
  binary().

openapi_request_time_filter_postcode_sectors_property() ->
  elements([<<"travel_time_reachable">>, <<"travel_time_all">>, <<"coverage">>]).

