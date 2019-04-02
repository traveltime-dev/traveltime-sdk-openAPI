-module(traveltimeplatform_request_time_filter_fast_property).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_fast_property/0]).

-export_type([traveltimeplatform_request_time_filter_fast_property/0]).

-type traveltimeplatform_request_time_filter_fast_property() ::
  binary().

traveltimeplatform_request_time_filter_fast_property() ->
  elements([<<"travel_time">>, <<"fares">>]).
  
