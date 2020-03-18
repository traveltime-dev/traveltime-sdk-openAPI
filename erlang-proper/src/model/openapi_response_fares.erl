-module(openapi_response_fares).

-include("openapi.hrl").

-export([openapi_response_fares/0]).

-export([openapi_response_fares/1]).

-export_type([openapi_response_fares/0]).

-type openapi_response_fares() ::
  [ {'breakdown', list(openapi_response_fares_breakdown_item:openapi_response_fares_breakdown_item()) }
  | {'tickets_total', list(openapi_response_fare_ticket:openapi_response_fare_ticket()) }
  ].


openapi_response_fares() ->
    openapi_response_fares([]).

openapi_response_fares(Fields) ->
  Default = [ {'breakdown', list(openapi_response_fares_breakdown_item:openapi_response_fares_breakdown_item()) }
            , {'tickets_total', list(openapi_response_fare_ticket:openapi_response_fare_ticket()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

