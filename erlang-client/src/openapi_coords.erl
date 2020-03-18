-module(openapi_coords).

-export([encode/1]).

-export_type([openapi_coords/0]).

-type openapi_coords() ::
    #{ 'lat' := float(),
       'lng' := float()
     }.

encode(#{ 'lat' := Lat,
          'lng' := Lng
        }) ->
    #{ 'lat' => Lat,
       'lng' => Lng
     }.
