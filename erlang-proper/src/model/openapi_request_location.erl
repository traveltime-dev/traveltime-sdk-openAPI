-module(openapi_request_location).

-include("openapi.hrl").

-export([openapi_request_location/0]).

-export([openapi_request_location/1]).

-export_type([openapi_request_location/0]).

-type openapi_request_location() ::
  [ {'id', binary() }
  | {'coords', openapi_coords:openapi_coords() }
  ].


openapi_request_location() ->
    openapi_request_location([]).

openapi_request_location(Fields) ->
  Default = [ {'id', binary() }
            , {'coords', openapi_coords:openapi_coords() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

