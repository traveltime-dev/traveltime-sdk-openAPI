-module(openapi_request_time_filter_fast_arrival_searches).

-include("openapi.hrl").

-export([openapi_request_time_filter_fast_arrival_searches/0]).

-export([openapi_request_time_filter_fast_arrival_searches/1]).

-export_type([openapi_request_time_filter_fast_arrival_searches/0]).

-type openapi_request_time_filter_fast_arrival_searches() ::
  [ {'many_to_one', list(openapi_request_time_filter_fast_arrival_many_to_one_search:openapi_request_time_filter_fast_arrival_many_to_one_search()) }
  | {'one_to_many', list(openapi_request_time_filter_fast_arrival_one_to_many_search:openapi_request_time_filter_fast_arrival_one_to_many_search()) }
  ].


openapi_request_time_filter_fast_arrival_searches() ->
    openapi_request_time_filter_fast_arrival_searches([]).

openapi_request_time_filter_fast_arrival_searches(Fields) ->
  Default = [ {'many_to_one', list(openapi_request_time_filter_fast_arrival_many_to_one_search:openapi_request_time_filter_fast_arrival_many_to_one_search()) }
            , {'one_to_many', list(openapi_request_time_filter_fast_arrival_one_to_many_search:openapi_request_time_filter_fast_arrival_one_to_many_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

