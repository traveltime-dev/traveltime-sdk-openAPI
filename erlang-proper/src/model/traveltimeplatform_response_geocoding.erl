-module(traveltimeplatform_response_geocoding).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_geocoding/0]).

-export_type([traveltimeplatform_response_geocoding/0]).

-type traveltimeplatform_response_geocoding() ::
  [ {'type', binary() }
  | {'features', list(traveltimeplatform_response_geocoding_geo_json_feature:traveltimeplatform_response_geocoding_geo_json_feature()) }
  ].

traveltimeplatform_response_geocoding() ->
  [ {'type', binary() }
  , {'features', list(traveltimeplatform_response_geocoding_geo_json_feature:traveltimeplatform_response_geocoding_geo_json_feature()) }
  ].
