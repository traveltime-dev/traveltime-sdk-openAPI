-module(openapi_request_range_no_max_results).

-include("openapi.hrl").

-export([openapi_request_range_no_max_results/0]).

-export([openapi_request_range_no_max_results/1]).

-export_type([openapi_request_range_no_max_results/0]).

-type openapi_request_range_no_max_results() ::
  [ {'enabled', boolean() }
  | {'width', integer() }
  ].


openapi_request_range_no_max_results() ->
    openapi_request_range_no_max_results([]).

openapi_request_range_no_max_results(Fields) ->
  Default = [ {'enabled', boolean() }
            , {'width', integer(1, 43200) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

