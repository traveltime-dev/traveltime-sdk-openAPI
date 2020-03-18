-module(openapi_response_fares_breakdown_item).

-export([encode/1]).

-export_type([openapi_response_fares_breakdown_item/0]).

-type openapi_response_fares_breakdown_item() ::
    #{ 'modes' := list(),
       'route_part_ids' := list(),
       'tickets' := list()
     }.

encode(#{ 'modes' := Modes,
          'route_part_ids' := RoutePartIds,
          'tickets' := Tickets
        }) ->
    #{ 'modes' => Modes,
       'route_part_ids' => RoutePartIds,
       'tickets' => Tickets
     }.
