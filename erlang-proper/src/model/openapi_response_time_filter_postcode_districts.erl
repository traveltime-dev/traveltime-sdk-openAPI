-module(openapi_response_time_filter_postcode_districts).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcode_districts/0]).

-export([openapi_response_time_filter_postcode_districts/1]).

-export_type([openapi_response_time_filter_postcode_districts/0]).

-type openapi_response_time_filter_postcode_districts() ::
  [ {'results', list(openapi_response_time_filter_postcode_districts_result:openapi_response_time_filter_postcode_districts_result()) }
  ].


openapi_response_time_filter_postcode_districts() ->
    openapi_response_time_filter_postcode_districts([]).

openapi_response_time_filter_postcode_districts(Fields) ->
  Default = [ {'results', list(openapi_response_time_filter_postcode_districts_result:openapi_response_time_filter_postcode_districts_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

