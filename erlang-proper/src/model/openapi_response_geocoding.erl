-module(openapi_response_geocoding).

-include("openapi.hrl").

-export([openapi_response_geocoding/0]).

-export([openapi_response_geocoding/1]).

-export_type([openapi_response_geocoding/0]).

-type openapi_response_geocoding() ::
  [ {'type', binary() }
  | {'features', list(openapi_response_geocoding_geo_json_feature:openapi_response_geocoding_geo_json_feature()) }
  ].


openapi_response_geocoding() ->
    openapi_response_geocoding([]).

openapi_response_geocoding(Fields) ->
  Default = [ {'type', binary() }
            , {'features', list(openapi_response_geocoding_geo_json_feature:openapi_response_geocoding_geo_json_feature()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

