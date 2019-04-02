-module(traveltimeplatform_response_geocoding_geometry).

-export([encode/1]).

-export_type([traveltimeplatform_response_geocoding_geometry/0]).

-type traveltimeplatform_response_geocoding_geometry() ::
    #{ 'type' := binary(),
       'coordinates' := list()
     }.

encode(#{ 'type' := Type,
          'coordinates' := Coordinates
        }) ->
    #{ 'type' => Type,
       'coordinates' => Coordinates
     }.
