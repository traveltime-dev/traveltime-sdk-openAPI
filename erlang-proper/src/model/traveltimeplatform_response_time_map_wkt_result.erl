-module(traveltimeplatform_response_time_map_wkt_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_wkt_result/0]).

-export_type([traveltimeplatform_response_time_map_wkt_result/0]).

-type traveltimeplatform_response_time_map_wkt_result() ::
  [ {'search_id', binary() }
  | {'shape', binary() }
  | {'properties', traveltimeplatform_response_time_map_properties:traveltimeplatform_response_time_map_properties() }
  ].

traveltimeplatform_response_time_map_wkt_result() ->
  [ {'search_id', binary() }
  , {'shape', binary() }
  , {'properties', traveltimeplatform_response_time_map_properties:traveltimeplatform_response_time_map_properties() }
  ].
