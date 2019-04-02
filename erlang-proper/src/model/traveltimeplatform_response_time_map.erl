-module(traveltimeplatform_response_time_map).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map/0]).

-export_type([traveltimeplatform_response_time_map/0]).

-type traveltimeplatform_response_time_map() ::
  [ {'results', list(traveltimeplatform_response_time_map_result:traveltimeplatform_response_time_map_result()) }
  ].

traveltimeplatform_response_time_map() ->
  [ {'results', list(traveltimeplatform_response_time_map_result:traveltimeplatform_response_time_map_result()) }
  ].
