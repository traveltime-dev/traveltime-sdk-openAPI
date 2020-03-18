-module(openapi_response_time_filter_result).

-include("openapi.hrl").

-export([openapi_response_time_filter_result/0]).

-export([openapi_response_time_filter_result/1]).

-export_type([openapi_response_time_filter_result/0]).

-type openapi_response_time_filter_result() ::
  [ {'search_id', binary() }
  | {'locations', list(openapi_response_time_filter_location:openapi_response_time_filter_location()) }
  | {'unreachable', list(binary()) }
  ].


openapi_response_time_filter_result() ->
    openapi_response_time_filter_result([]).

openapi_response_time_filter_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'locations', list(openapi_response_time_filter_location:openapi_response_time_filter_location()) }
            , {'unreachable', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

