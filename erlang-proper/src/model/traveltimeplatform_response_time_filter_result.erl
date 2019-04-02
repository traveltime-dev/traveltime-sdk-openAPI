-module(traveltimeplatform_response_time_filter_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_result/0]).

-export_type([traveltimeplatform_response_time_filter_result/0]).

-type traveltimeplatform_response_time_filter_result() ::
  [ {'search_id', binary() }
  | {'locations', list(traveltimeplatform_response_time_filter_location:traveltimeplatform_response_time_filter_location()) }
  | {'unreachable', list(binary()) }
  ].

traveltimeplatform_response_time_filter_result() ->
  [ {'search_id', binary() }
  , {'locations', list(traveltimeplatform_response_time_filter_location:traveltimeplatform_response_time_filter_location()) }
  , {'unreachable', list(binary()) }
  ].
