-module(openapi_response_routes_location).

-include("openapi.hrl").

-export([openapi_response_routes_location/0]).

-export([openapi_response_routes_location/1]).

-export_type([openapi_response_routes_location/0]).

-type openapi_response_routes_location() ::
  [ {'id', binary() }
  | {'properties', list(openapi_response_routes_properties:openapi_response_routes_properties()) }
  ].


openapi_response_routes_location() ->
    openapi_response_routes_location([]).

openapi_response_routes_location(Fields) ->
  Default = [ {'id', binary() }
            , {'properties', list(openapi_response_routes_properties:openapi_response_routes_properties()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

