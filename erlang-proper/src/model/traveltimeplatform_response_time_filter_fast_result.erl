-module(traveltimeplatform_response_time_filter_fast_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_fast_result/0]).

-export([traveltimeplatform_response_time_filter_fast_result/1]).

-export_type([traveltimeplatform_response_time_filter_fast_result/0]).

-type traveltimeplatform_response_time_filter_fast_result() ::
  [ {'search_id', binary() }
  | {'locations', list(traveltimeplatform_response_time_filter_fast_location:traveltimeplatform_response_time_filter_fast_location()) }
  | {'unreachable', list(binary()) }
  ].


traveltimeplatform_response_time_filter_fast_result() ->
    traveltimeplatform_response_time_filter_fast_result([]).

traveltimeplatform_response_time_filter_fast_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'locations', list(traveltimeplatform_response_time_filter_fast_location:traveltimeplatform_response_time_filter_fast_location()) }
            , {'unreachable', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

