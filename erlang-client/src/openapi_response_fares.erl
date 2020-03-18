-module(openapi_response_fares).

-export([encode/1]).

-export_type([openapi_response_fares/0]).

-type openapi_response_fares() ::
    #{ 'breakdown' := list(),
       'tickets_total' := list()
     }.

encode(#{ 'breakdown' := Breakdown,
          'tickets_total' := TicketsTotal
        }) ->
    #{ 'breakdown' => Breakdown,
       'tickets_total' => TicketsTotal
     }.
