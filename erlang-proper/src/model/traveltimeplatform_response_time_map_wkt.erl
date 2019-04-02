-module(traveltimeplatform_response_time_map_wkt).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_wkt/0]).

-export_type([traveltimeplatform_response_time_map_wkt/0]).

-type traveltimeplatform_response_time_map_wkt() ::
  [ {'results', list(traveltimeplatform_response_time_map_wkt_result:traveltimeplatform_response_time_map_wkt_result()) }
  ].

traveltimeplatform_response_time_map_wkt() ->
  [ {'results', list(traveltimeplatform_response_time_map_wkt_result:traveltimeplatform_response_time_map_wkt_result()) }
  ].
