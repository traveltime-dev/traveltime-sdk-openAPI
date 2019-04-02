-module(traveltimeplatform_response_geocoding_geo_json_feature).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_geocoding_geo_json_feature/0]).

-export_type([traveltimeplatform_response_geocoding_geo_json_feature/0]).

-type traveltimeplatform_response_geocoding_geo_json_feature() ::
  [ {'type', binary() }
  | {'geometry', traveltimeplatform_response_geocoding_geometry:traveltimeplatform_response_geocoding_geometry() }
  | {'properties', traveltimeplatform_response_geocoding_properties:traveltimeplatform_response_geocoding_properties() }
  ].

traveltimeplatform_response_geocoding_geo_json_feature() ->
  [ {'type', binary() }
  , {'geometry', traveltimeplatform_response_geocoding_geometry:traveltimeplatform_response_geocoding_geometry() }
  , {'properties', traveltimeplatform_response_geocoding_properties:traveltimeplatform_response_geocoding_properties() }
  ].
