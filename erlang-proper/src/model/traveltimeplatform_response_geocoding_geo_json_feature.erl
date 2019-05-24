-module(traveltimeplatform_response_geocoding_geo_json_feature).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_geocoding_geo_json_feature/0]).

-export([traveltimeplatform_response_geocoding_geo_json_feature/1]).

-export_type([traveltimeplatform_response_geocoding_geo_json_feature/0]).

-type traveltimeplatform_response_geocoding_geo_json_feature() ::
  [ {'type', binary() }
  | {'geometry', traveltimeplatform_response_geocoding_geometry:traveltimeplatform_response_geocoding_geometry() }
  | {'properties', traveltimeplatform_response_geocoding_properties:traveltimeplatform_response_geocoding_properties() }
  ].


traveltimeplatform_response_geocoding_geo_json_feature() ->
    traveltimeplatform_response_geocoding_geo_json_feature([]).

traveltimeplatform_response_geocoding_geo_json_feature(Fields) ->
  Default = [ {'type', binary() }
            , {'geometry', traveltimeplatform_response_geocoding_geometry:traveltimeplatform_response_geocoding_geometry() }
            , {'properties', traveltimeplatform_response_geocoding_properties:traveltimeplatform_response_geocoding_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

