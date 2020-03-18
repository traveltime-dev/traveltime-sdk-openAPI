-module(openapi_response_time_filter_postcode_districts_result).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcode_districts_result/0]).

-export([openapi_response_time_filter_postcode_districts_result/1]).

-export_type([openapi_response_time_filter_postcode_districts_result/0]).

-type openapi_response_time_filter_postcode_districts_result() ::
  [ {'search_id', binary() }
  | {'districts', list(openapi_response_time_filter_postcode_district:openapi_response_time_filter_postcode_district()) }
  ].


openapi_response_time_filter_postcode_districts_result() ->
    openapi_response_time_filter_postcode_districts_result([]).

openapi_response_time_filter_postcode_districts_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'districts', list(openapi_response_time_filter_postcode_district:openapi_response_time_filter_postcode_district()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

