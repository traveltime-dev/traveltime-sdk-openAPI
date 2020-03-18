-module(openapi_request_routes_departure_search).

-include("openapi.hrl").

-export([openapi_request_routes_departure_search/0]).

-export([openapi_request_routes_departure_search/1]).

-export_type([openapi_request_routes_departure_search/0]).

-type openapi_request_routes_departure_search() ::
  [ {'id', binary() }
  | {'departure_location_id', binary() }
  | {'arrival_location_ids', list(binary()) }
  | {'transportation', openapi_request_transportation:openapi_request_transportation() }
  | {'departure_time', datetime() }
  | {'properties', list(openapi_request_routes_property:openapi_request_routes_property()) }
  | {'range', openapi_request_range_full:openapi_request_range_full() }
  ].


openapi_request_routes_departure_search() ->
    openapi_request_routes_departure_search([]).

openapi_request_routes_departure_search(Fields) ->
  Default = [ {'id', binary() }
            , {'departure_location_id', binary() }
            , {'arrival_location_ids', list(binary(), 1, 2) }
            , {'transportation', openapi_request_transportation:openapi_request_transportation() }
            , {'departure_time', datetime() }
            , {'properties', list(openapi_request_routes_property:openapi_request_routes_property()) }
            , {'range', openapi_request_range_full:openapi_request_range_full() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

