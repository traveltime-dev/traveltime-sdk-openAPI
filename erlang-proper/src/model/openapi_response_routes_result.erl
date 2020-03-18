-module(openapi_response_routes_result).

-include("openapi.hrl").

-export([openapi_response_routes_result/0]).

-export([openapi_response_routes_result/1]).

-export_type([openapi_response_routes_result/0]).

-type openapi_response_routes_result() ::
  [ {'search_id', binary() }
  | {'locations', list(openapi_response_routes_location:openapi_response_routes_location()) }
  | {'unreachable', list(binary()) }
  ].


openapi_response_routes_result() ->
    openapi_response_routes_result([]).

openapi_response_routes_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'locations', list(openapi_response_routes_location:openapi_response_routes_location()) }
            , {'unreachable', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

