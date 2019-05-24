-module(traveltimeplatform_response_time_map_wkt).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_map_wkt/0]).

-export([traveltimeplatform_response_time_map_wkt/1]).

-export_type([traveltimeplatform_response_time_map_wkt/0]).

-type traveltimeplatform_response_time_map_wkt() ::
  [ {'results', list(traveltimeplatform_response_time_map_wkt_result:traveltimeplatform_response_time_map_wkt_result()) }
  ].


traveltimeplatform_response_time_map_wkt() ->
    traveltimeplatform_response_time_map_wkt([]).

traveltimeplatform_response_time_map_wkt(Fields) ->
  Default = [ {'results', list(traveltimeplatform_response_time_map_wkt_result:traveltimeplatform_response_time_map_wkt_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

