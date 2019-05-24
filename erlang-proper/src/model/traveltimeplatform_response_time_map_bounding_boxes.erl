-module(traveltimeplatform_response_time_map_bounding_boxes).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_bounding_boxes/0]).

-export([traveltimeplatform_response_time_map_bounding_boxes/1]).

-export_type([traveltimeplatform_response_time_map_bounding_boxes/0]).

-type traveltimeplatform_response_time_map_bounding_boxes() ::
  [ {'results', list(traveltimeplatform_response_time_map_bounding_boxes_result:traveltimeplatform_response_time_map_bounding_boxes_result()) }
  ].


traveltimeplatform_response_time_map_bounding_boxes() ->
    traveltimeplatform_response_time_map_bounding_boxes([]).

traveltimeplatform_response_time_map_bounding_boxes(Fields) ->
  Default = [ {'results', list(traveltimeplatform_response_time_map_bounding_boxes_result:traveltimeplatform_response_time_map_bounding_boxes_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

