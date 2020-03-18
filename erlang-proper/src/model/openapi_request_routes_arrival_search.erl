-module(openapi_request_routes_arrival_search).

-include("openapi.hrl").

-export([openapi_request_routes_arrival_search/0]).

-export([openapi_request_routes_arrival_search/1]).

-export_type([openapi_request_routes_arrival_search/0]).

-type openapi_request_routes_arrival_search() ::
  [ {'id', binary() }
  | {'departure_location_ids', list(binary()) }
  | {'arrival_location_id', binary() }
  | {'transportation', openapi_request_transportation:openapi_request_transportation() }
  | {'arrival_time', datetime() }
  | {'properties', list(openapi_request_routes_property:openapi_request_routes_property()) }
  | {'range', openapi_request_range_full:openapi_request_range_full() }
  ].


openapi_request_routes_arrival_search() ->
    openapi_request_routes_arrival_search([]).

openapi_request_routes_arrival_search(Fields) ->
  Default = [ {'id', binary() }
            , {'departure_location_ids', list(binary(), 1, 2) }
            , {'arrival_location_id', binary() }
            , {'transportation', openapi_request_transportation:openapi_request_transportation() }
            , {'arrival_time', datetime() }
            , {'properties', list(openapi_request_routes_property:openapi_request_routes_property()) }
            , {'range', openapi_request_range_full:openapi_request_range_full() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

