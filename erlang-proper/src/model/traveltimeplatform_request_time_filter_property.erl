-module(traveltimeplatform_request_time_filter_property).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_property/0]).

-export_type([traveltimeplatform_request_time_filter_property/0]).

-type traveltimeplatform_request_time_filter_property() ::
  binary().

traveltimeplatform_request_time_filter_property() ->
  elements([<<"travel_time">>, <<"distance">>, <<"distance_breakdown">>, <<"fares">>, <<"route">>]).

