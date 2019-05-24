-module(traveltimeplatform_request_range_full).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_range_full/0]).

-export([traveltimeplatform_request_range_full/1]).

-export_type([traveltimeplatform_request_range_full/0]).

-type traveltimeplatform_request_range_full() ::
  [ {'enabled', boolean() }
  | {'max_results', integer() }
  | {'width', integer() }
  ].


traveltimeplatform_request_range_full() ->
    traveltimeplatform_request_range_full([]).

traveltimeplatform_request_range_full(Fields) ->
  Default = [ {'enabled', boolean() }
            , {'max_results', integer(1, 5) }
            , {'width', integer(1, 43200) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

