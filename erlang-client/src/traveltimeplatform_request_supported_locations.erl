-module(traveltimeplatform_request_supported_locations).

-export([encode/1]).

-export_type([traveltimeplatform_request_supported_locations/0]).

-type traveltimeplatform_request_supported_locations() ::
    #{ 'locations' := list()
     }.

encode(#{ 'locations' := Locations
        }) ->
    #{ 'locations' => Locations
     }.
