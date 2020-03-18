-module(openapi_response_geocoding_geo_json_feature).

-export([encode/1]).

-export_type([openapi_response_geocoding_geo_json_feature/0]).

-type openapi_response_geocoding_geo_json_feature() ::
    #{ 'type' := binary(),
       'geometry' := openapi_response_geocoding_geometry:openapi_response_geocoding_geometry(),
       'properties' := openapi_response_geocoding_properties:openapi_response_geocoding_properties()
     }.

encode(#{ 'type' := Type,
          'geometry' := Geometry,
          'properties' := Properties
        }) ->
    #{ 'type' => Type,
       'geometry' => Geometry,
       'properties' => Properties
     }.
