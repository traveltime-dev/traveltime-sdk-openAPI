-module(openapi_response_fares_breakdown_item).

-include("openapi.hrl").

-export([openapi_response_fares_breakdown_item/0]).

-export([openapi_response_fares_breakdown_item/1]).

-export_type([openapi_response_fares_breakdown_item/0]).

-type openapi_response_fares_breakdown_item() ::
  [ {'modes', list(openapi_response_transportation_mode:openapi_response_transportation_mode()) }
  | {'route_part_ids', list(integer()) }
  | {'tickets', list(openapi_response_fare_ticket:openapi_response_fare_ticket()) }
  ].


openapi_response_fares_breakdown_item() ->
    openapi_response_fares_breakdown_item([]).

openapi_response_fares_breakdown_item(Fields) ->
  Default = [ {'modes', list(openapi_response_transportation_mode:openapi_response_transportation_mode()) }
            , {'route_part_ids', list(integer()) }
            , {'tickets', list(openapi_response_fare_ticket:openapi_response_fare_ticket()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

