-module(traveltimeplatform_response_time_map_bounding_boxes).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_map_bounding_boxes/0]).

-type traveltimeplatform_response_time_map_bounding_boxes() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
