-module(openapi_response_time_map_wkt_result).

-include("openapi.hrl").

-export([openapi_response_time_map_wkt_result/0]).

-export([openapi_response_time_map_wkt_result/1]).

-export_type([openapi_response_time_map_wkt_result/0]).

-type openapi_response_time_map_wkt_result() ::
  [ {'search_id', binary() }
  | {'shape', binary() }
  | {'properties', openapi_response_time_map_properties:openapi_response_time_map_properties() }
  ].


openapi_response_time_map_wkt_result() ->
    openapi_response_time_map_wkt_result([]).

openapi_response_time_map_wkt_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'shape', binary() }
            , {'properties', openapi_response_time_map_properties:openapi_response_time_map_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

