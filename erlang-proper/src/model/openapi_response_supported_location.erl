-module(openapi_response_supported_location).

-include("openapi.hrl").

-export([openapi_response_supported_location/0]).

-export([openapi_response_supported_location/1]).

-export_type([openapi_response_supported_location/0]).

-type openapi_response_supported_location() ::
  [ {'id', binary() }
  | {'map_name', binary() }
  ].


openapi_response_supported_location() ->
    openapi_response_supported_location([]).

openapi_response_supported_location(Fields) ->
  Default = [ {'id', binary() }
            , {'map_name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

