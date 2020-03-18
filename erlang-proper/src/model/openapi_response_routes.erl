-module(openapi_response_routes).

-include("openapi.hrl").

-export([openapi_response_routes/0]).

-export([openapi_response_routes/1]).

-export_type([openapi_response_routes/0]).

-type openapi_response_routes() ::
  [ {'results', list(openapi_response_routes_result:openapi_response_routes_result()) }
  ].


openapi_response_routes() ->
    openapi_response_routes([]).

openapi_response_routes(Fields) ->
  Default = [ {'results', list(openapi_response_routes_result:openapi_response_routes_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

