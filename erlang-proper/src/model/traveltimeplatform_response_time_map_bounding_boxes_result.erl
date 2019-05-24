-module(traveltimeplatform_response_time_map_bounding_boxes_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_bounding_boxes_result/0]).

-export([traveltimeplatform_response_time_map_bounding_boxes_result/1]).

-export_type([traveltimeplatform_response_time_map_bounding_boxes_result/0]).

-type traveltimeplatform_response_time_map_bounding_boxes_result() ::
  [ {'search_id', binary() }
  | {'bounding_boxes', list(traveltimeplatform_response_bounding_box:traveltimeplatform_response_bounding_box()) }
  | {'properties', traveltimeplatform_response_time_map_properties:traveltimeplatform_response_time_map_properties() }
  ].


traveltimeplatform_response_time_map_bounding_boxes_result() ->
    traveltimeplatform_response_time_map_bounding_boxes_result([]).

traveltimeplatform_response_time_map_bounding_boxes_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'bounding_boxes', list(traveltimeplatform_response_bounding_box:traveltimeplatform_response_bounding_box()) }
            , {'properties', traveltimeplatform_response_time_map_properties:traveltimeplatform_response_time_map_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

