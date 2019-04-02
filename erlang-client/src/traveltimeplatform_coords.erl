-module(traveltimeplatform_coords).

-export([encode/1]).

-export_type([traveltimeplatform_coords/0]).

-type traveltimeplatform_coords() ::
    #{ 'lat' := float(),
       'lng' := float()
     }.

encode(#{ 'lat' := Lat,
          'lng' := Lng
        }) ->
    #{ 'lat' => Lat,
       'lng' => Lng
     }.
