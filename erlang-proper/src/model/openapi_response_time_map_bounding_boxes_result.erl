-module(openapi_response_time_map_bounding_boxes_result).

-include("openapi.hrl").

-export([openapi_response_time_map_bounding_boxes_result/0]).

-export([openapi_response_time_map_bounding_boxes_result/1]).

-export_type([openapi_response_time_map_bounding_boxes_result/0]).

-type openapi_response_time_map_bounding_boxes_result() ::
  [ {'search_id', binary() }
  | {'bounding_boxes', list(openapi_response_bounding_box:openapi_response_bounding_box()) }
  | {'properties', openapi_response_time_map_properties:openapi_response_time_map_properties() }
  ].


openapi_response_time_map_bounding_boxes_result() ->
    openapi_response_time_map_bounding_boxes_result([]).

openapi_response_time_map_bounding_boxes_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'bounding_boxes', list(openapi_response_bounding_box:openapi_response_bounding_box()) }
            , {'properties', openapi_response_time_map_properties:openapi_response_time_map_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

