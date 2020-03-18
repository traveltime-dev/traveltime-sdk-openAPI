-module(openapi_response_geocoding_geometry).

-export([encode/1]).

-export_type([openapi_response_geocoding_geometry/0]).

-type openapi_response_geocoding_geometry() ::
    #{ 'type' := binary(),
       'coordinates' := list()
     }.

encode(#{ 'type' := Type,
          'coordinates' := Coordinates
        }) ->
    #{ 'type' => Type,
       'coordinates' => Coordinates
     }.
