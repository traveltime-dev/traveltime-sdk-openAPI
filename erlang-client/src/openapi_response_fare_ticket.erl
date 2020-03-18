-module(openapi_response_fare_ticket).

-export([encode/1]).

-export_type([openapi_response_fare_ticket/0]).

-type openapi_response_fare_ticket() ::
    #{ 'type' := binary(),
       'price' := float(),
       'currency' := binary()
     }.

encode(#{ 'type' := Type,
          'price' := Price,
          'currency' := Currency
        }) ->
    #{ 'type' => Type,
       'price' => Price,
       'currency' => Currency
     }.
