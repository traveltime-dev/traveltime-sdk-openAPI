-module(openapi_response_geocoding_properties).

-include("openapi.hrl").

-export([openapi_response_geocoding_properties/0]).

-export([openapi_response_geocoding_properties/1]).

-export_type([openapi_response_geocoding_properties/0]).

-type openapi_response_geocoding_properties() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'score', float() }
  | {'house_number', binary() }
  | {'street', binary() }
  | {'region', binary() }
  | {'region_code', binary() }
  | {'neighbourhood', binary() }
  | {'county', binary() }
  | {'macroregion', binary() }
  | {'city', binary() }
  | {'country', binary() }
  | {'country_code', binary() }
  | {'continent', binary() }
  | {'postcode', binary() }
  | {'features', openapi_response_map_info_features:openapi_response_map_info_features() }
  ].


openapi_response_geocoding_properties() ->
    openapi_response_geocoding_properties([]).

openapi_response_geocoding_properties(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'score', float() }
            , {'house_number', binary() }
            , {'street', binary() }
            , {'region', binary() }
            , {'region_code', binary() }
            , {'neighbourhood', binary() }
            , {'county', binary() }
            , {'macroregion', binary() }
            , {'city', binary() }
            , {'country', binary() }
            , {'country_code', binary() }
            , {'continent', binary() }
            , {'postcode', binary() }
            , {'features', openapi_response_map_info_features:openapi_response_map_info_features() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

