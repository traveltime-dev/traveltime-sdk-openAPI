-module(traveltimeplatform_response_time_filter).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter/0]).

-export_type([traveltimeplatform_response_time_filter/0]).

-type traveltimeplatform_response_time_filter() ::
  [ {'results', list(traveltimeplatform_response_time_filter_result:traveltimeplatform_response_time_filter_result()) }
  ].

traveltimeplatform_response_time_filter() ->
  [ {'results', list(traveltimeplatform_response_time_filter_result:traveltimeplatform_response_time_filter_result()) }
  ].
