-module(traveltimeplatform_response_supported_locations).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_supported_locations/0]).

-export_type([traveltimeplatform_response_supported_locations/0]).

-type traveltimeplatform_response_supported_locations() ::
  [ {'locations', list(traveltimeplatform_response_supported_location:traveltimeplatform_response_supported_location()) }
  | {'unsupported_locations', list(binary()) }
  ].

traveltimeplatform_response_supported_locations() ->
  [ {'locations', list(traveltimeplatform_response_supported_location:traveltimeplatform_response_supported_location()) }
  , {'unsupported_locations', list(binary()) }
  ].
