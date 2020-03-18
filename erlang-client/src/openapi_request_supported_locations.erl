-module(openapi_request_supported_locations).

-export([encode/1]).

-export_type([openapi_request_supported_locations/0]).

-type openapi_request_supported_locations() ::
    #{ 'locations' := list()
     }.

encode(#{ 'locations' := Locations
        }) ->
    #{ 'locations' => Locations
     }.
