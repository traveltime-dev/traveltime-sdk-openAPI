-module(openapi_response_time_filter_postcodes_result).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcodes_result/0]).

-export([openapi_response_time_filter_postcodes_result/1]).

-export_type([openapi_response_time_filter_postcodes_result/0]).

-type openapi_response_time_filter_postcodes_result() ::
  [ {'search_id', binary() }
  | {'postcodes', list(openapi_response_time_filter_postcode:openapi_response_time_filter_postcode()) }
  ].


openapi_response_time_filter_postcodes_result() ->
    openapi_response_time_filter_postcodes_result([]).

openapi_response_time_filter_postcodes_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'postcodes', list(openapi_response_time_filter_postcode:openapi_response_time_filter_postcode()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

