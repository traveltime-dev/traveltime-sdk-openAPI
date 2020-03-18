-module(openapi_response_map_info_map).

-export([encode/1]).

-export_type([openapi_response_map_info_map/0]).

-type openapi_response_map_info_map() ::
    #{ 'name' := binary(),
       'features' := openapi_response_map_info_features:openapi_response_map_info_features()
     }.

encode(#{ 'name' := Name,
          'features' := Features
        }) ->
    #{ 'name' => Name,
       'features' => Features
     }.
