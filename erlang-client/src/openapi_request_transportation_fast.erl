-module(openapi_request_transportation_fast).

-export([encode/1]).

-export_type([openapi_request_transportation_fast/0]).

-type openapi_request_transportation_fast() ::
    #{ 'type' := binary()
     }.

encode(#{ 'type' := Type
        }) ->
    #{ 'type' => Type
     }.
