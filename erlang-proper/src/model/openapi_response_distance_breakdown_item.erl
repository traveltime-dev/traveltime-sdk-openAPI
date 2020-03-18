-module(openapi_response_distance_breakdown_item).

-include("openapi.hrl").

-export([openapi_response_distance_breakdown_item/0]).

-export([openapi_response_distance_breakdown_item/1]).

-export_type([openapi_response_distance_breakdown_item/0]).

-type openapi_response_distance_breakdown_item() ::
  [ {'mode', openapi_response_transportation_mode:openapi_response_transportation_mode() }
  | {'distance', integer() }
  ].


openapi_response_distance_breakdown_item() ->
    openapi_response_distance_breakdown_item([]).

openapi_response_distance_breakdown_item(Fields) ->
  Default = [ {'mode', openapi_response_transportation_mode:openapi_response_transportation_mode() }
            , {'distance', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

