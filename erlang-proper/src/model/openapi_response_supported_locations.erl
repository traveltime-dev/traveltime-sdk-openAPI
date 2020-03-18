-module(openapi_response_supported_locations).

-include("openapi.hrl").

-export([openapi_response_supported_locations/0]).

-export([openapi_response_supported_locations/1]).

-export_type([openapi_response_supported_locations/0]).

-type openapi_response_supported_locations() ::
  [ {'locations', list(openapi_response_supported_location:openapi_response_supported_location()) }
  | {'unsupported_locations', list(binary()) }
  ].


openapi_response_supported_locations() ->
    openapi_response_supported_locations([]).

openapi_response_supported_locations(Fields) ->
  Default = [ {'locations', list(openapi_response_supported_location:openapi_response_supported_location()) }
            , {'unsupported_locations', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

