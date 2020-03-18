-module(openapi_coords).

-include("openapi.hrl").

-export([openapi_coords/0]).

-export([openapi_coords/1]).

-export_type([openapi_coords/0]).

-type openapi_coords() ::
  [ {'lat', float() }
  | {'lng', float() }
  ].


openapi_coords() ->
    openapi_coords([]).

openapi_coords(Fields) ->
  Default = [ {'lat', float() }
            , {'lng', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

