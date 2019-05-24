-module(traveltimeplatform_response_time_filter_fast).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_fast/0]).

-export([traveltimeplatform_response_time_filter_fast/1]).

-export_type([traveltimeplatform_response_time_filter_fast/0]).

-type traveltimeplatform_response_time_filter_fast() ::
  [ {'results', list(traveltimeplatform_response_time_filter_fast_result:traveltimeplatform_response_time_filter_fast_result()) }
  ].


traveltimeplatform_response_time_filter_fast() ->
    traveltimeplatform_response_time_filter_fast([]).

traveltimeplatform_response_time_filter_fast(Fields) ->
  Default = [ {'results', list(traveltimeplatform_response_time_filter_fast_result:traveltimeplatform_response_time_filter_fast_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

