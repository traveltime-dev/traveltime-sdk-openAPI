-module(traveltimeplatform_request_location).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_location/0]).

-export_type([traveltimeplatform_request_location/0]).

-type traveltimeplatform_request_location() ::
  [ {'id', binary() }
  | {'coords', traveltimeplatform_coords:traveltimeplatform_coords() }
  ].

traveltimeplatform_request_location() ->
  [ {'id', binary() }
  , {'coords', traveltimeplatform_coords:traveltimeplatform_coords() }
  ].
