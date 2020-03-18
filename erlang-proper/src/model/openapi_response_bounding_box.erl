-module(openapi_response_bounding_box).

-include("openapi.hrl").

-export([openapi_response_bounding_box/0]).

-export([openapi_response_bounding_box/1]).

-export_type([openapi_response_bounding_box/0]).

-type openapi_response_bounding_box() ::
  [ {'envelope', openapi_response_box:openapi_response_box() }
  | {'boxes', list(openapi_response_box:openapi_response_box()) }
  ].


openapi_response_bounding_box() ->
    openapi_response_bounding_box([]).

openapi_response_bounding_box(Fields) ->
  Default = [ {'envelope', openapi_response_box:openapi_response_box() }
            , {'boxes', list(openapi_response_box:openapi_response_box()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

