-module(traveltimeplatform_response_supported_location).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_supported_location/0]).

-export_type([traveltimeplatform_response_supported_location/0]).

-type traveltimeplatform_response_supported_location() ::
  [ {'id', binary() }
  | {'map_name', binary() }
  ].

traveltimeplatform_response_supported_location() ->
  [ {'id', binary() }
  , {'map_name', binary() }
  ].
