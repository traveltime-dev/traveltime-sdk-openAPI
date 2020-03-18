-module(openapi_request_transportation_fast).

-include("openapi.hrl").

-export([openapi_request_transportation_fast/0]).

-export([openapi_request_transportation_fast/1]).

-export_type([openapi_request_transportation_fast/0]).

-type openapi_request_transportation_fast() ::
  [ {'type', binary() }
  ].


openapi_request_transportation_fast() ->
    openapi_request_transportation_fast([]).

openapi_request_transportation_fast(Fields) ->
  Default = [ {'type', elements([<<"public_transport">>, <<"driving">>, <<"driving+public_transport">>]) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

