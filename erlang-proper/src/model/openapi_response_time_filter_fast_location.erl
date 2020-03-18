-module(openapi_response_time_filter_fast_location).

-include("openapi.hrl").

-export([openapi_response_time_filter_fast_location/0]).

-export([openapi_response_time_filter_fast_location/1]).

-export_type([openapi_response_time_filter_fast_location/0]).

-type openapi_response_time_filter_fast_location() ::
  [ {'id', binary() }
  | {'properties', list(openapi_response_time_filter_fast_properties:openapi_response_time_filter_fast_properties()) }
  ].


openapi_response_time_filter_fast_location() ->
    openapi_response_time_filter_fast_location([]).

openapi_response_time_filter_fast_location(Fields) ->
  Default = [ {'id', binary() }
            , {'properties', list(openapi_response_time_filter_fast_properties:openapi_response_time_filter_fast_properties()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

