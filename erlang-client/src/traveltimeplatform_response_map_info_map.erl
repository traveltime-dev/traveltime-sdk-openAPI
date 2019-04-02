-module(traveltimeplatform_response_map_info_map).

-export([encode/1]).

-export_type([traveltimeplatform_response_map_info_map/0]).

-type traveltimeplatform_response_map_info_map() ::
    #{ 'name' := binary(),
       'features' := traveltimeplatform_response_map_info_features:traveltimeplatform_response_map_info_features()
     }.

encode(#{ 'name' := Name,
          'features' := Features
        }) ->
    #{ 'name' => Name,
       'features' => Features
     }.
