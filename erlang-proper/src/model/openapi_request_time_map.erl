-module(openapi_request_time_map).

-include("openapi.hrl").

-export([openapi_request_time_map/0]).

-export([openapi_request_time_map/1]).

-export_type([openapi_request_time_map/0]).

-type openapi_request_time_map() ::
  [ {'departure_searches', list(openapi_request_time_map_departure_search:openapi_request_time_map_departure_search()) }
  | {'arrival_searches', list(openapi_request_time_map_arrival_search:openapi_request_time_map_arrival_search()) }
  | {'unions', list(openapi_request_union_on_intersection:openapi_request_union_on_intersection()) }
  | {'intersections', list(openapi_request_union_on_intersection:openapi_request_union_on_intersection()) }
  ].


openapi_request_time_map() ->
    openapi_request_time_map([]).

openapi_request_time_map(Fields) ->
  Default = [ {'departure_searches', list(openapi_request_time_map_departure_search:openapi_request_time_map_departure_search()) }
            , {'arrival_searches', list(openapi_request_time_map_arrival_search:openapi_request_time_map_arrival_search()) }
            , {'unions', list(openapi_request_union_on_intersection:openapi_request_union_on_intersection()) }
            , {'intersections', list(openapi_request_union_on_intersection:openapi_request_union_on_intersection()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

