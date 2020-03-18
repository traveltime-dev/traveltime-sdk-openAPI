-module(openapi_response_time_map_result).

-include("openapi.hrl").

-export([openapi_response_time_map_result/0]).

-export([openapi_response_time_map_result/1]).

-export_type([openapi_response_time_map_result/0]).

-type openapi_response_time_map_result() ::
  [ {'search_id', binary() }
  | {'shapes', list(openapi_response_shape:openapi_response_shape()) }
  | {'properties', openapi_response_time_map_properties:openapi_response_time_map_properties() }
  ].


openapi_response_time_map_result() ->
    openapi_response_time_map_result([]).

openapi_response_time_map_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'shapes', list(openapi_response_shape:openapi_response_shape()) }
            , {'properties', openapi_response_time_map_properties:openapi_response_time_map_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

