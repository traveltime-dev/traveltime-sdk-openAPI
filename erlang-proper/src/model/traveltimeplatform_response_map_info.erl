-module(traveltimeplatform_response_map_info).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_map_info/0]).

-export_type([traveltimeplatform_response_map_info/0]).

-type traveltimeplatform_response_map_info() ::
  [ {'maps', list(traveltimeplatform_response_map_info_map:traveltimeplatform_response_map_info_map()) }
  ].

traveltimeplatform_response_map_info() ->
  [ {'maps', list(traveltimeplatform_response_map_info_map:traveltimeplatform_response_map_info_map()) }
  ].
