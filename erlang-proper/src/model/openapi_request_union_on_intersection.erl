-module(openapi_request_union_on_intersection).

-include("openapi.hrl").

-export([openapi_request_union_on_intersection/0]).

-export([openapi_request_union_on_intersection/1]).

-export_type([openapi_request_union_on_intersection/0]).

-type openapi_request_union_on_intersection() ::
  [ {'id', binary() }
  | {'search_ids', list(binary()) }
  ].


openapi_request_union_on_intersection() ->
    openapi_request_union_on_intersection([]).

openapi_request_union_on_intersection(Fields) ->
  Default = [ {'id', binary() }
            , {'search_ids', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

