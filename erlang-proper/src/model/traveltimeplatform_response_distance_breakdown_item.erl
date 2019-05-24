-module(traveltimeplatform_response_distance_breakdown_item).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_distance_breakdown_item/0]).

-export([traveltimeplatform_response_distance_breakdown_item/1]).

-export_type([traveltimeplatform_response_distance_breakdown_item/0]).

-type traveltimeplatform_response_distance_breakdown_item() ::
  [ {'mode', traveltimeplatform_response_transportation_mode:traveltimeplatform_response_transportation_mode() }
  | {'distance', integer() }
  ].


traveltimeplatform_response_distance_breakdown_item() ->
    traveltimeplatform_response_distance_breakdown_item([]).

traveltimeplatform_response_distance_breakdown_item(Fields) ->
  Default = [ {'mode', traveltimeplatform_response_transportation_mode:traveltimeplatform_response_transportation_mode() }
            , {'distance', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

