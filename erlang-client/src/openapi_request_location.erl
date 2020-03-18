-module(openapi_request_location).

-export([encode/1]).

-export_type([openapi_request_location/0]).

-type openapi_request_location() ::
    #{ 'id' := binary(),
       'coords' := openapi_coords:openapi_coords()
     }.

encode(#{ 'id' := Id,
          'coords' := Coords
        }) ->
    #{ 'id' => Id,
       'coords' => Coords
     }.
