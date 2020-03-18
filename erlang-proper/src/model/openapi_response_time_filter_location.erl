-module(openapi_response_time_filter_location).

-include("openapi.hrl").

-export([openapi_response_time_filter_location/0]).

-export([openapi_response_time_filter_location/1]).

-export_type([openapi_response_time_filter_location/0]).

-type openapi_response_time_filter_location() ::
  [ {'id', binary() }
  | {'properties', list(openapi_response_time_filter_properties:openapi_response_time_filter_properties()) }
  ].


openapi_response_time_filter_location() ->
    openapi_response_time_filter_location([]).

openapi_response_time_filter_location(Fields) ->
  Default = [ {'id', binary() }
            , {'properties', list(openapi_response_time_filter_properties:openapi_response_time_filter_properties()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

