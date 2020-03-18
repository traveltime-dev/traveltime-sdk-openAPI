-module(openapi_response_time_filter_fast).

-include("openapi.hrl").

-export([openapi_response_time_filter_fast/0]).

-export([openapi_response_time_filter_fast/1]).

-export_type([openapi_response_time_filter_fast/0]).

-type openapi_response_time_filter_fast() ::
  [ {'results', list(openapi_response_time_filter_fast_result:openapi_response_time_filter_fast_result()) }
  ].


openapi_response_time_filter_fast() ->
    openapi_response_time_filter_fast([]).

openapi_response_time_filter_fast(Fields) ->
  Default = [ {'results', list(openapi_response_time_filter_fast_result:openapi_response_time_filter_fast_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

