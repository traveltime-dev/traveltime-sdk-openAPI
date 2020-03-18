-module(openapi_request_supported_locations).

-include("openapi.hrl").

-export([openapi_request_supported_locations/0]).

-export([openapi_request_supported_locations/1]).

-export_type([openapi_request_supported_locations/0]).

-type openapi_request_supported_locations() ::
  [ {'locations', list(openapi_request_location:openapi_request_location()) }
  ].


openapi_request_supported_locations() ->
    openapi_request_supported_locations([]).

openapi_request_supported_locations(Fields) ->
  Default = [ {'locations', list(openapi_request_location:openapi_request_location(), 1) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

