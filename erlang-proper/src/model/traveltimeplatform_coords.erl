-module(traveltimeplatform_coords).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_coords/0]).

-export([traveltimeplatform_coords/1]).

-export_type([traveltimeplatform_coords/0]).

-type traveltimeplatform_coords() ::
  [ {'lat', float() }
  | {'lng', float() }
  ].


traveltimeplatform_coords() ->
    traveltimeplatform_coords([]).

traveltimeplatform_coords(Fields) ->
  Default = [ {'lat', float() }
            , {'lng', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

