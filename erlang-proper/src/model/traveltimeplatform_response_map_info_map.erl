-module(traveltimeplatform_response_map_info_map).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_map_info_map/0]).

-export_type([traveltimeplatform_response_map_info_map/0]).

-type traveltimeplatform_response_map_info_map() ::
  [ {'name', binary() }
  | {'features', traveltimeplatform_response_map_info_features:traveltimeplatform_response_map_info_features() }
  ].

traveltimeplatform_response_map_info_map() ->
  [ {'name', binary() }
  , {'features', traveltimeplatform_response_map_info_features:traveltimeplatform_response_map_info_features() }
  ].
