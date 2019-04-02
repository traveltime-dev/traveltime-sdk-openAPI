-module(traveltimeplatform_request_supported_locations).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_supported_locations/0]).

-export_type([traveltimeplatform_request_supported_locations/0]).

-type traveltimeplatform_request_supported_locations() ::
  [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location()) }
  ].

traveltimeplatform_request_supported_locations() ->
  [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location(), 1) }
  ].
