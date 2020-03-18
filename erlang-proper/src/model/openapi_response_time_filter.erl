-module(openapi_response_time_filter).

-include("openapi.hrl").

-export([openapi_response_time_filter/0]).

-export([openapi_response_time_filter/1]).

-export_type([openapi_response_time_filter/0]).

-type openapi_response_time_filter() ::
  [ {'results', list(openapi_response_time_filter_result:openapi_response_time_filter_result()) }
  ].


openapi_response_time_filter() ->
    openapi_response_time_filter([]).

openapi_response_time_filter(Fields) ->
  Default = [ {'results', list(openapi_response_time_filter_result:openapi_response_time_filter_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

