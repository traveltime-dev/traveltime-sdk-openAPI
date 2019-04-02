-module(traveltimeplatform_response_fare_ticket).

-export([encode/1]).

-export_type([traveltimeplatform_response_fare_ticket/0]).

-type traveltimeplatform_response_fare_ticket() ::
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
