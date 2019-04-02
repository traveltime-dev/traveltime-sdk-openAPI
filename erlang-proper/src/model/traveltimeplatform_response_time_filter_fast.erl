-module(traveltimeplatform_response_time_filter_fast).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_fast/0]).

-export_type([traveltimeplatform_response_time_filter_fast/0]).

-type traveltimeplatform_response_time_filter_fast() ::
  [ {'results', list(traveltimeplatform_response_time_filter_fast_result:traveltimeplatform_response_time_filter_fast_result()) }
  ].

traveltimeplatform_response_time_filter_fast() ->
  [ {'results', list(traveltimeplatform_response_time_filter_fast_result:traveltimeplatform_response_time_filter_fast_result()) }
  ].
