-module(traveltimeplatform_response_time_map).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map/0]).

-export([traveltimeplatform_response_time_map/1]).

-export_type([traveltimeplatform_response_time_map/0]).

-type traveltimeplatform_response_time_map() ::
  [ {'results', list(traveltimeplatform_response_time_map_result:traveltimeplatform_response_time_map_result()) }
  ].


traveltimeplatform_response_time_map() ->
    traveltimeplatform_response_time_map([]).

traveltimeplatform_response_time_map(Fields) ->
  Default = [ {'results', list(traveltimeplatform_response_time_map_result:traveltimeplatform_response_time_map_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

