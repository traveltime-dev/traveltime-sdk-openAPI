-module(openapi_response_geocoding_geo_json_feature).

-include("openapi.hrl").

-export([openapi_response_geocoding_geo_json_feature/0]).

-export([openapi_response_geocoding_geo_json_feature/1]).

-export_type([openapi_response_geocoding_geo_json_feature/0]).

-type openapi_response_geocoding_geo_json_feature() ::
  [ {'type', binary() }
  | {'geometry', openapi_response_geocoding_geometry:openapi_response_geocoding_geometry() }
  | {'properties', openapi_response_geocoding_properties:openapi_response_geocoding_properties() }
  ].


openapi_response_geocoding_geo_json_feature() ->
    openapi_response_geocoding_geo_json_feature([]).

openapi_response_geocoding_geo_json_feature(Fields) ->
  Default = [ {'type', binary() }
            , {'geometry', openapi_response_geocoding_geometry:openapi_response_geocoding_geometry() }
            , {'properties', openapi_response_geocoding_properties:openapi_response_geocoding_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

