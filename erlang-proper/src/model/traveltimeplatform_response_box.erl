-module(traveltimeplatform_response_box).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_box/0]).

-export([traveltimeplatform_response_box/1]).

-export_type([traveltimeplatform_response_box/0]).

-type traveltimeplatform_response_box() ::
  [ {'min_lat', float() }
  | {'max_lat', float() }
  | {'min_lng', float() }
  | {'max_lng', float() }
  ].


traveltimeplatform_response_box() ->
    traveltimeplatform_response_box([]).

traveltimeplatform_response_box(Fields) ->
  Default = [ {'min_lat', float() }
            , {'max_lat', float() }
            , {'min_lng', float() }
            , {'max_lng', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

