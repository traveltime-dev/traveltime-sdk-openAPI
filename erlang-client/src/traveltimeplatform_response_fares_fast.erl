-module(traveltimeplatform_response_fares_fast).

-export([encode/1]).

-export_type([traveltimeplatform_response_fares_fast/0]).

-type traveltimeplatform_response_fares_fast() ::
    #{ 'tickets_total' := list()
     }.

encode(#{ 'tickets_total' := TicketsTotal
        }) ->
    #{ 'tickets_total' => TicketsTotal
     }.
