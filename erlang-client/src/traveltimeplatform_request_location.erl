-module(traveltimeplatform_request_location).

-export([encode/1]).

-export_type([traveltimeplatform_request_location/0]).

-type traveltimeplatform_request_location() ::
    #{ 'id' := binary(),
       'coords' := traveltimeplatform_coords:traveltimeplatform_coords()
     }.

encode(#{ 'id' := Id,
          'coords' := Coords
        }) ->
    #{ 'id' => Id,
       'coords' => Coords
     }.
