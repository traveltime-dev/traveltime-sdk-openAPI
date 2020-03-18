-module(openapi_response_supported_location).

-export([encode/1]).

-export_type([openapi_response_supported_location/0]).

-type openapi_response_supported_location() ::
    #{ 'id' := binary(),
       'map_name' := binary()
     }.

encode(#{ 'id' := Id,
          'map_name' := MapName
        }) ->
    #{ 'id' => Id,
       'map_name' => MapName
     }.
