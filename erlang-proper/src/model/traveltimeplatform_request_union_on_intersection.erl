-module(traveltimeplatform_request_union_on_intersection).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_union_on_intersection/0]).

-export([traveltimeplatform_request_union_on_intersection/1]).

-export_type([traveltimeplatform_request_union_on_intersection/0]).

-type traveltimeplatform_request_union_on_intersection() ::
  [ {'id', binary() }
  | {'search_ids', list(binary()) }
  ].


traveltimeplatform_request_union_on_intersection() ->
    traveltimeplatform_request_union_on_intersection([]).

traveltimeplatform_request_union_on_intersection(Fields) ->
  Default = [ {'id', binary() }
            , {'search_ids', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

