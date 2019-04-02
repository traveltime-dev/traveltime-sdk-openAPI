-module(traveltimeplatform_response_time_map_result).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_map_result/0]).

-type traveltimeplatform_response_time_map_result() ::
    #{ 'search_id' := binary(),
       'shapes' := list(),
       'properties' := traveltimeplatform_response_time_map_properties:traveltimeplatform_response_time_map_properties()
     }.

encode(#{ 'search_id' := SearchId,
          'shapes' := Shapes,
          'properties' := Properties
        }) ->
    #{ 'search_id' => SearchId,
       'shapes' => Shapes,
       'properties' => Properties
     }.
