-module(openapi_request_routes).

-include("openapi.hrl").

-export([openapi_request_routes/0]).

-export([openapi_request_routes/1]).

-export_type([openapi_request_routes/0]).

-type openapi_request_routes() ::
  [ {'locations', list(openapi_request_location:openapi_request_location()) }
  | {'departure_searches', list(openapi_request_routes_departure_search:openapi_request_routes_departure_search()) }
  | {'arrival_searches', list(openapi_request_routes_arrival_search:openapi_request_routes_arrival_search()) }
  ].


openapi_request_routes() ->
    openapi_request_routes([]).

openapi_request_routes(Fields) ->
  Default = [ {'locations', list(openapi_request_location:openapi_request_location(), 1) }
            , {'departure_searches', list(openapi_request_routes_departure_search:openapi_request_routes_departure_search()) }
            , {'arrival_searches', list(openapi_request_routes_arrival_search:openapi_request_routes_arrival_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

