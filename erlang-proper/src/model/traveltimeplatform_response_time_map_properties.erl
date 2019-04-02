-module(traveltimeplatform_response_time_map_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_properties/0]).

-export_type([traveltimeplatform_response_time_map_properties/0]).

-type traveltimeplatform_response_time_map_properties() ::
  [ {'is_only_walking', boolean() }
  ].

traveltimeplatform_response_time_map_properties() ->
  [ {'is_only_walking', boolean() }
  ].
