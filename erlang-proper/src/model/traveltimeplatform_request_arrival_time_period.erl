-module(traveltimeplatform_request_arrival_time_period).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_arrival_time_period/0]).

-export_type([traveltimeplatform_request_arrival_time_period/0]).

-type traveltimeplatform_request_arrival_time_period() ::
  binary().

traveltimeplatform_request_arrival_time_period() ->
  elements([<<"weekday_morning">>]).
  
