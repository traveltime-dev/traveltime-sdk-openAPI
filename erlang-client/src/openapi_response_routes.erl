-module(openapi_response_routes).

-export([encode/1]).

-export_type([openapi_response_routes/0]).

-type openapi_response_routes() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
