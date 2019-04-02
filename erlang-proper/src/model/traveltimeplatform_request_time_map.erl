-module(traveltimeplatform_request_time_map).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_map/0]).

-export_type([traveltimeplatform_request_time_map/0]).

-type traveltimeplatform_request_time_map() ::
  [ {'departure_searches', list(traveltimeplatform_request_time_map_departure_search:traveltimeplatform_request_time_map_departure_search()) }
  | {'arrival_searches', list(traveltimeplatform_request_time_map_arrival_search:traveltimeplatform_request_time_map_arrival_search()) }
  | {'unions', list(traveltimeplatform_request_union_on_intersection:traveltimeplatform_request_union_on_intersection()) }
  | {'intersections', list(traveltimeplatform_request_union_on_intersection:traveltimeplatform_request_union_on_intersection()) }
  ].

traveltimeplatform_request_time_map() ->
  [ {'departure_searches', list(traveltimeplatform_request_time_map_departure_search:traveltimeplatform_request_time_map_departure_search()) }
  , {'arrival_searches', list(traveltimeplatform_request_time_map_arrival_search:traveltimeplatform_request_time_map_arrival_search()) }
  , {'unions', list(traveltimeplatform_request_union_on_intersection:traveltimeplatform_request_union_on_intersection()) }
  , {'intersections', list(traveltimeplatform_request_union_on_intersection:traveltimeplatform_request_union_on_intersection()) }
  ].
