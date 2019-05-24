-module(traveltimeplatform_response_time_map_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_properties/0]).

-export([traveltimeplatform_response_time_map_properties/1]).

-export_type([traveltimeplatform_response_time_map_properties/0]).

-type traveltimeplatform_response_time_map_properties() ::
  [ {'is_only_walking', boolean() }
  ].


traveltimeplatform_response_time_map_properties() ->
    traveltimeplatform_response_time_map_properties([]).

traveltimeplatform_response_time_map_properties(Fields) ->
  Default = [ {'is_only_walking', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

