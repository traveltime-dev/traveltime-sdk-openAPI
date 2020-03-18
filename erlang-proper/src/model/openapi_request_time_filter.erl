-module(openapi_request_time_filter).

-include("openapi.hrl").

-export([openapi_request_time_filter/0]).

-export([openapi_request_time_filter/1]).

-export_type([openapi_request_time_filter/0]).

-type openapi_request_time_filter() ::
  [ {'locations', list(openapi_request_location:openapi_request_location()) }
  | {'departure_searches', list(openapi_request_time_filter_departure_search:openapi_request_time_filter_departure_search()) }
  | {'arrival_searches', list(openapi_request_time_filter_arrival_search:openapi_request_time_filter_arrival_search()) }
  ].


openapi_request_time_filter() ->
    openapi_request_time_filter([]).

openapi_request_time_filter(Fields) ->
  Default = [ {'locations', list(openapi_request_location:openapi_request_location(), 1) }
            , {'departure_searches', list(openapi_request_time_filter_departure_search:openapi_request_time_filter_departure_search()) }
            , {'arrival_searches', list(openapi_request_time_filter_arrival_search:openapi_request_time_filter_arrival_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

