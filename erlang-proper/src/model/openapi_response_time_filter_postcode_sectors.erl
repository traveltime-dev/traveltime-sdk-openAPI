-module(openapi_response_time_filter_postcode_sectors).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcode_sectors/0]).

-export([openapi_response_time_filter_postcode_sectors/1]).

-export_type([openapi_response_time_filter_postcode_sectors/0]).

-type openapi_response_time_filter_postcode_sectors() ::
  [ {'results', list(openapi_response_time_filter_postcode_sectors_result:openapi_response_time_filter_postcode_sectors_result()) }
  ].


openapi_response_time_filter_postcode_sectors() ->
    openapi_response_time_filter_postcode_sectors([]).

openapi_response_time_filter_postcode_sectors(Fields) ->
  Default = [ {'results', list(openapi_response_time_filter_postcode_sectors_result:openapi_response_time_filter_postcode_sectors_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

