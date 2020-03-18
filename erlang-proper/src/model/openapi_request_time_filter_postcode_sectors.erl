-module(openapi_request_time_filter_postcode_sectors).

-include("openapi.hrl").

-export([openapi_request_time_filter_postcode_sectors/0]).

-export([openapi_request_time_filter_postcode_sectors/1]).

-export_type([openapi_request_time_filter_postcode_sectors/0]).

-type openapi_request_time_filter_postcode_sectors() ::
  [ {'departure_searches', list(openapi_request_time_filter_postcode_sectors_departure_search:openapi_request_time_filter_postcode_sectors_departure_search()) }
  | {'arrival_searches', list(openapi_request_time_filter_postcode_sectors_arrival_search:openapi_request_time_filter_postcode_sectors_arrival_search()) }
  ].


openapi_request_time_filter_postcode_sectors() ->
    openapi_request_time_filter_postcode_sectors([]).

openapi_request_time_filter_postcode_sectors(Fields) ->
  Default = [ {'departure_searches', list(openapi_request_time_filter_postcode_sectors_departure_search:openapi_request_time_filter_postcode_sectors_departure_search()) }
            , {'arrival_searches', list(openapi_request_time_filter_postcode_sectors_arrival_search:openapi_request_time_filter_postcode_sectors_arrival_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

