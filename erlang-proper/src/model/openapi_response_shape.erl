-module(openapi_response_shape).

-include("openapi.hrl").

-export([openapi_response_shape/0]).

-export([openapi_response_shape/1]).

-export_type([openapi_response_shape/0]).

-type openapi_response_shape() ::
  [ {'shell', list(openapi_coords:openapi_coords()) }
  | {'holes', list(list(openapi_coords:openapi_coords())) }
  ].


openapi_response_shape() ->
    openapi_response_shape([]).

openapi_response_shape(Fields) ->
  Default = [ {'shell', list(openapi_coords:openapi_coords()) }
            , {'holes', list(list(openapi_coords:openapi_coords())) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

