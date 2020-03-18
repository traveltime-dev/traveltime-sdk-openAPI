-module(openapi_request_time_filter_postcode_districts).

-include("openapi.hrl").

-export([openapi_request_time_filter_postcode_districts/0]).

-export([openapi_request_time_filter_postcode_districts/1]).

-export_type([openapi_request_time_filter_postcode_districts/0]).

-type openapi_request_time_filter_postcode_districts() ::
  [ {'departure_searches', list(openapi_request_time_filter_postcode_districts_departure_search:openapi_request_time_filter_postcode_districts_departure_search()) }
  | {'arrival_searches', list(openapi_request_time_filter_postcode_districts_arrival_search:openapi_request_time_filter_postcode_districts_arrival_search()) }
  ].


openapi_request_time_filter_postcode_districts() ->
    openapi_request_time_filter_postcode_districts([]).

openapi_request_time_filter_postcode_districts(Fields) ->
  Default = [ {'departure_searches', list(openapi_request_time_filter_postcode_districts_departure_search:openapi_request_time_filter_postcode_districts_departure_search()) }
            , {'arrival_searches', list(openapi_request_time_filter_postcode_districts_arrival_search:openapi_request_time_filter_postcode_districts_arrival_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

