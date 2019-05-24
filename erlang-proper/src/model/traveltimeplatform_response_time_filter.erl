-module(traveltimeplatform_response_time_filter).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter/0]).

-export([traveltimeplatform_response_time_filter/1]).

-export_type([traveltimeplatform_response_time_filter/0]).

-type traveltimeplatform_response_time_filter() ::
  [ {'results', list(traveltimeplatform_response_time_filter_result:traveltimeplatform_response_time_filter_result()) }
  ].


traveltimeplatform_response_time_filter() ->
    traveltimeplatform_response_time_filter([]).

traveltimeplatform_response_time_filter(Fields) ->
  Default = [ {'results', list(traveltimeplatform_response_time_filter_result:traveltimeplatform_response_time_filter_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

