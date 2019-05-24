-module(traveltimeplatform_request_range_no_max_results).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_range_no_max_results/0]).

-export([traveltimeplatform_request_range_no_max_results/1]).

-export_type([traveltimeplatform_request_range_no_max_results/0]).

-type traveltimeplatform_request_range_no_max_results() ::
  [ {'enabled', boolean() }
  | {'width', integer() }
  ].


traveltimeplatform_request_range_no_max_results() ->
    traveltimeplatform_request_range_no_max_results([]).

traveltimeplatform_request_range_no_max_results(Fields) ->
  Default = [ {'enabled', boolean() }
            , {'width', integer(1, 43200) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

