-module(openapi_response_time_filter_postcode_sectors_result).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcode_sectors_result/0]).

-export([openapi_response_time_filter_postcode_sectors_result/1]).

-export_type([openapi_response_time_filter_postcode_sectors_result/0]).

-type openapi_response_time_filter_postcode_sectors_result() ::
  [ {'search_id', binary() }
  | {'sectors', list(openapi_response_time_filter_postcode_sector:openapi_response_time_filter_postcode_sector()) }
  ].


openapi_response_time_filter_postcode_sectors_result() ->
    openapi_response_time_filter_postcode_sectors_result([]).

openapi_response_time_filter_postcode_sectors_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'sectors', list(openapi_response_time_filter_postcode_sector:openapi_response_time_filter_postcode_sector()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

