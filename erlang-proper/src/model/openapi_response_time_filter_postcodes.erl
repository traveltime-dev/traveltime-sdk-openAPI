-module(openapi_response_time_filter_postcodes).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcodes/0]).

-export([openapi_response_time_filter_postcodes/1]).

-export_type([openapi_response_time_filter_postcodes/0]).

-type openapi_response_time_filter_postcodes() ::
  [ {'results', list(openapi_response_time_filter_postcodes_result:openapi_response_time_filter_postcodes_result()) }
  ].


openapi_response_time_filter_postcodes() ->
    openapi_response_time_filter_postcodes([]).

openapi_response_time_filter_postcodes(Fields) ->
  Default = [ {'results', list(openapi_response_time_filter_postcodes_result:openapi_response_time_filter_postcodes_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

