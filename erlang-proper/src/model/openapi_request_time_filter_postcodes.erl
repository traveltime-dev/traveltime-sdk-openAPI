-module(openapi_request_time_filter_postcodes).

-include("openapi.hrl").

-export([openapi_request_time_filter_postcodes/0]).

-export([openapi_request_time_filter_postcodes/1]).

-export_type([openapi_request_time_filter_postcodes/0]).

-type openapi_request_time_filter_postcodes() ::
  [ {'departure_searches', list(openapi_request_time_filter_postcodes_departure_search:openapi_request_time_filter_postcodes_departure_search()) }
  | {'arrival_searches', list(openapi_request_time_filter_postcodes_arrival_search:openapi_request_time_filter_postcodes_arrival_search()) }
  ].


openapi_request_time_filter_postcodes() ->
    openapi_request_time_filter_postcodes([]).

openapi_request_time_filter_postcodes(Fields) ->
  Default = [ {'departure_searches', list(openapi_request_time_filter_postcodes_departure_search:openapi_request_time_filter_postcodes_departure_search()) }
            , {'arrival_searches', list(openapi_request_time_filter_postcodes_arrival_search:openapi_request_time_filter_postcodes_arrival_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

