-module(openapi_response_geocoding_geometry).

-include("openapi.hrl").

-export([openapi_response_geocoding_geometry/0]).

-export([openapi_response_geocoding_geometry/1]).

-export_type([openapi_response_geocoding_geometry/0]).

-type openapi_response_geocoding_geometry() ::
  [ {'type', binary() }
  | {'coordinates', list(float()) }
  ].


openapi_response_geocoding_geometry() ->
    openapi_response_geocoding_geometry([]).

openapi_response_geocoding_geometry(Fields) ->
  Default = [ {'type', binary() }
            , {'coordinates', list(float()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

