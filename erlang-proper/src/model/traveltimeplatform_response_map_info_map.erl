-module(traveltimeplatform_response_map_info_map).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_map_info_map/0]).

-export([traveltimeplatform_response_map_info_map/1]).

-export_type([traveltimeplatform_response_map_info_map/0]).

-type traveltimeplatform_response_map_info_map() ::
  [ {'name', binary() }
  | {'features', traveltimeplatform_response_map_info_features:traveltimeplatform_response_map_info_features() }
  ].


traveltimeplatform_response_map_info_map() ->
    traveltimeplatform_response_map_info_map([]).

traveltimeplatform_response_map_info_map(Fields) ->
  Default = [ {'name', binary() }
            , {'features', traveltimeplatform_response_map_info_features:traveltimeplatform_response_map_info_features() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

