-module(traveltimeplatform_response_time_map_bounding_boxes).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_bounding_boxes/0]).

-export_type([traveltimeplatform_response_time_map_bounding_boxes/0]).

-type traveltimeplatform_response_time_map_bounding_boxes() ::
  [ {'results', list(traveltimeplatform_response_time_map_bounding_boxes_result:traveltimeplatform_response_time_map_bounding_boxes_result()) }
  ].

traveltimeplatform_response_time_map_bounding_boxes() ->
  [ {'results', list(traveltimeplatform_response_time_map_bounding_boxes_result:traveltimeplatform_response_time_map_bounding_boxes_result()) }
  ].
