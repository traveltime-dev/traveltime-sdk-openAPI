-module(openapi_response_fares_fast).

-include("openapi.hrl").

-export([openapi_response_fares_fast/0]).

-export([openapi_response_fares_fast/1]).

-export_type([openapi_response_fares_fast/0]).

-type openapi_response_fares_fast() ::
  [ {'tickets_total', list(openapi_response_fare_ticket:openapi_response_fare_ticket()) }
  ].


openapi_response_fares_fast() ->
    openapi_response_fares_fast([]).

openapi_response_fares_fast(Fields) ->
  Default = [ {'tickets_total', list(openapi_response_fare_ticket:openapi_response_fare_ticket()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

