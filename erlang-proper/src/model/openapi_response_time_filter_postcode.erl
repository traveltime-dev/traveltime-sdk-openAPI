-module(openapi_response_time_filter_postcode).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcode/0]).

-export([openapi_response_time_filter_postcode/1]).

-export_type([openapi_response_time_filter_postcode/0]).

-type openapi_response_time_filter_postcode() ::
  [ {'code', binary() }
  | {'properties', list(openapi_response_time_filter_postcodes_properties:openapi_response_time_filter_postcodes_properties()) }
  ].


openapi_response_time_filter_postcode() ->
    openapi_response_time_filter_postcode([]).

openapi_response_time_filter_postcode(Fields) ->
  Default = [ {'code', binary() }
            , {'properties', list(openapi_response_time_filter_postcodes_properties:openapi_response_time_filter_postcodes_properties()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

