-module(openapi_request_range_full).

-include("openapi.hrl").

-export([openapi_request_range_full/0]).

-export([openapi_request_range_full/1]).

-export_type([openapi_request_range_full/0]).

-type openapi_request_range_full() ::
  [ {'enabled', boolean() }
  | {'max_results', integer() }
  | {'width', integer() }
  ].


openapi_request_range_full() ->
    openapi_request_range_full([]).

openapi_request_range_full(Fields) ->
  Default = [ {'enabled', boolean() }
            , {'max_results', integer(1, 5) }
            , {'width', integer(1, 43200) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

