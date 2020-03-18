-module(openapi_response_time_map_wkt_result).

-export([encode/1]).

-export_type([openapi_response_time_map_wkt_result/0]).

-type openapi_response_time_map_wkt_result() ::
    #{ 'search_id' := binary(),
       'shape' := binary(),
       'properties' := openapi_response_time_map_properties:openapi_response_time_map_properties()
     }.

encode(#{ 'search_id' := SearchId,
          'shape' := Shape,
          'properties' := Properties
        }) ->
    #{ 'search_id' => SearchId,
       'shape' => Shape,
       'properties' => Properties
     }.
