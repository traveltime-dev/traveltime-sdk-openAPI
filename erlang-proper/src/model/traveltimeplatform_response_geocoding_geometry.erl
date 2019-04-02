-module(traveltimeplatform_response_geocoding_geometry).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_geocoding_geometry/0]).

-export_type([traveltimeplatform_response_geocoding_geometry/0]).

-type traveltimeplatform_response_geocoding_geometry() ::
  [ {'type', binary() }
  | {'coordinates', list(float()) }
  ].

traveltimeplatform_response_geocoding_geometry() ->
  [ {'type', binary() }
  , {'coordinates', list(float()) }
  ].
