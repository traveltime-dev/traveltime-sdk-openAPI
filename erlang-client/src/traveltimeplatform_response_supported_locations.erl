-module(traveltimeplatform_response_supported_locations).

-export([encode/1]).

-export_type([traveltimeplatform_response_supported_locations/0]).

-type traveltimeplatform_response_supported_locations() ::
    #{ 'locations' := list(),
       'unsupported_locations' := list()
     }.

encode(#{ 'locations' := Locations,
          'unsupported_locations' := UnsupportedLocations
        }) ->
    #{ 'locations' => Locations,
       'unsupported_locations' => UnsupportedLocations
     }.
