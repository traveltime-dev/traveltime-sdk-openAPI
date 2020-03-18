-module(openapi_response_time_map_bounding_boxes).

-include("openapi.hrl").

-export([openapi_response_time_map_bounding_boxes/0]).

-export([openapi_response_time_map_bounding_boxes/1]).

-export_type([openapi_response_time_map_bounding_boxes/0]).

-type openapi_response_time_map_bounding_boxes() ::
  [ {'results', list(openapi_response_time_map_bounding_boxes_result:openapi_response_time_map_bounding_boxes_result()) }
  ].


openapi_response_time_map_bounding_boxes() ->
    openapi_response_time_map_bounding_boxes([]).

openapi_response_time_map_bounding_boxes(Fields) ->
  Default = [ {'results', list(openapi_response_time_map_bounding_boxes_result:openapi_response_time_map_bounding_boxes_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

