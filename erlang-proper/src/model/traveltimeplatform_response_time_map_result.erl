-module(traveltimeplatform_response_time_map_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_result/0]).

-export_type([traveltimeplatform_response_time_map_result/0]).

-type traveltimeplatform_response_time_map_result() ::
  [ {'search_id', binary() }
  | {'shapes', list(traveltimeplatform_response_shape:traveltimeplatform_response_shape()) }
  | {'properties', traveltimeplatform_response_time_map_properties:traveltimeplatform_response_time_map_properties() }
  ].

traveltimeplatform_response_time_map_result() ->
  [ {'search_id', binary() }
  , {'shapes', list(traveltimeplatform_response_shape:traveltimeplatform_response_shape()) }
  , {'properties', traveltimeplatform_response_time_map_properties:traveltimeplatform_response_time_map_properties() }
  ].
