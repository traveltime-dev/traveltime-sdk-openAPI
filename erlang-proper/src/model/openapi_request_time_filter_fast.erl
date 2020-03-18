-module(openapi_request_time_filter_fast).

-include("openapi.hrl").

-export([openapi_request_time_filter_fast/0]).

-export([openapi_request_time_filter_fast/1]).

-export_type([openapi_request_time_filter_fast/0]).

-type openapi_request_time_filter_fast() ::
  [ {'locations', list(openapi_request_location:openapi_request_location()) }
  | {'arrival_searches', openapi_request_time_filter_fast_arrival_searches:openapi_request_time_filter_fast_arrival_searches() }
  ].


openapi_request_time_filter_fast() ->
    openapi_request_time_filter_fast([]).

openapi_request_time_filter_fast(Fields) ->
  Default = [ {'locations', list(openapi_request_location:openapi_request_location(), 1) }
            , {'arrival_searches', openapi_request_time_filter_fast_arrival_searches:openapi_request_time_filter_fast_arrival_searches() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

