-module(traveltimeplatform_response_time_map_bounding_boxes_result).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_map_bounding_boxes_result/0]).

-type traveltimeplatform_response_time_map_bounding_boxes_result() ::
    #{ 'search_id' := binary(),
       'bounding_boxes' := list(),
       'properties' := traveltimeplatform_response_time_map_properties:traveltimeplatform_response_time_map_properties()
     }.

encode(#{ 'search_id' := SearchId,
          'bounding_boxes' := BoundingBoxes,
          'properties' := Properties
        }) ->
    #{ 'search_id' => SearchId,
       'bounding_boxes' => BoundingBoxes,
       'properties' => Properties
     }.
