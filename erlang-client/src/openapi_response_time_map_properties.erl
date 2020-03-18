-module(openapi_response_time_map_properties).

-export([encode/1]).

-export_type([openapi_response_time_map_properties/0]).

-type openapi_response_time_map_properties() ::
    #{ 'is_only_walking' => boolean()
     }.

encode(#{ 'is_only_walking' := IsOnlyWalking
        }) ->
    #{ 'is_only_walking' => IsOnlyWalking
     }.
