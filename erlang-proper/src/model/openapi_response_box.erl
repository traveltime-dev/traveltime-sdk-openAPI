-module(openapi_response_box).

-include("openapi.hrl").

-export([openapi_response_box/0]).

-export([openapi_response_box/1]).

-export_type([openapi_response_box/0]).

-type openapi_response_box() ::
  [ {'min_lat', float() }
  | {'max_lat', float() }
  | {'min_lng', float() }
  | {'max_lng', float() }
  ].


openapi_response_box() ->
    openapi_response_box([]).

openapi_response_box(Fields) ->
  Default = [ {'min_lat', float() }
            , {'max_lat', float() }
            , {'min_lng', float() }
            , {'max_lng', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

