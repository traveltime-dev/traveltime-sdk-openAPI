-module(traveltimeplatform_response_map_info_features_public_transport).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_map_info_features_public_transport/0]).

-export([traveltimeplatform_response_map_info_features_public_transport/1]).

-export_type([traveltimeplatform_response_map_info_features_public_transport/0]).

-type traveltimeplatform_response_map_info_features_public_transport() ::
  [ {'date_start', datetime() }
  | {'date_end', datetime() }
  ].


traveltimeplatform_response_map_info_features_public_transport() ->
    traveltimeplatform_response_map_info_features_public_transport([]).

traveltimeplatform_response_map_info_features_public_transport(Fields) ->
  Default = [ {'date_start', datetime() }
            , {'date_end', datetime() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

