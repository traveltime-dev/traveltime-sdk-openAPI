-module(openapi_response_fare_ticket).

-include("openapi.hrl").

-export([openapi_response_fare_ticket/0]).

-export([openapi_response_fare_ticket/1]).

-export_type([openapi_response_fare_ticket/0]).

-type openapi_response_fare_ticket() ::
  [ {'type', binary() }
  | {'price', float() }
  | {'currency', binary() }
  ].


openapi_response_fare_ticket() ->
    openapi_response_fare_ticket([]).

openapi_response_fare_ticket(Fields) ->
  Default = [ {'type', elements([<<"single">>, <<"week">>, <<"month">>, <<"year">>]) }
            , {'price', float() }
            , {'currency', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

