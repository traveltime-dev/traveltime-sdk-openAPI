-module(openapi_response_route).

-include("openapi.hrl").

-export([openapi_response_route/0]).

-export([openapi_response_route/1]).

-export_type([openapi_response_route/0]).

-type openapi_response_route() ::
  [ {'departure_time', datetime() }
  | {'arrival_time', datetime() }
  | {'parts', list(openapi_response_route_part:openapi_response_route_part()) }
  ].


openapi_response_route() ->
    openapi_response_route([]).

openapi_response_route(Fields) ->
  Default = [ {'departure_time', datetime() }
            , {'arrival_time', datetime() }
            , {'parts', list(openapi_response_route_part:openapi_response_route_part()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

