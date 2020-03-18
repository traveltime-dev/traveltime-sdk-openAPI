-module(openapi_response_geocoding).

-export([encode/1]).

-export_type([openapi_response_geocoding/0]).

-type openapi_response_geocoding() ::
    #{ 'type' := binary(),
       'features' := list()
     }.

encode(#{ 'type' := Type,
          'features' := Features
        }) ->
    #{ 'type' => Type,
       'features' => Features
     }.
