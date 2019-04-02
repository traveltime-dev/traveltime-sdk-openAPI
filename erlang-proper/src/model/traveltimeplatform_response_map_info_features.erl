-module(traveltimeplatform_response_map_info_features).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_map_info_features/0]).

-export_type([traveltimeplatform_response_map_info_features/0]).

-type traveltimeplatform_response_map_info_features() ::
  [ {'public_transport', traveltimeplatform_response_map_info_features_public_transport:traveltimeplatform_response_map_info_features_public_transport() }
  | {'fares', boolean() }
  | {'postcodes', boolean() }
  ].

traveltimeplatform_response_map_info_features() ->
  [ {'public_transport', traveltimeplatform_response_map_info_features_public_transport:traveltimeplatform_response_map_info_features_public_transport() }
  , {'fares', boolean() }
  , {'postcodes', boolean() }
  ].
