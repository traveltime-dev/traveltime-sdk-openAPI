-module(openapi_response_time_map_bounding_boxes_result).

-export([encode/1]).

-export_type([openapi_response_time_map_bounding_boxes_result/0]).

-type openapi_response_time_map_bounding_boxes_result() ::
    #{ 'search_id' := binary(),
       'bounding_boxes' := list(),
       'properties' := openapi_response_time_map_properties:openapi_response_time_map_properties()
     }.

encode(#{ 'search_id' := SearchId,
          'bounding_boxes' := BoundingBoxes,
          'properties' := Properties
        }) ->
    #{ 'search_id' => SearchId,
       'bounding_boxes' => BoundingBoxes,
       'properties' => Properties
     }.
