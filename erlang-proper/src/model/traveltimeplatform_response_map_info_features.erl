-module(traveltimeplatform_response_map_info_features).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_map_info_features/0]).

-export([traveltimeplatform_response_map_info_features/1]).

-export_type([traveltimeplatform_response_map_info_features/0]).

-type traveltimeplatform_response_map_info_features() ::
  [ {'public_transport', traveltimeplatform_response_map_info_features_public_transport:traveltimeplatform_response_map_info_features_public_transport() }
  | {'fares', boolean() }
  | {'postcodes', boolean() }
  ].


traveltimeplatform_response_map_info_features() ->
    traveltimeplatform_response_map_info_features([]).

traveltimeplatform_response_map_info_features(Fields) ->
  Default = [ {'public_transport', traveltimeplatform_response_map_info_features_public_transport:traveltimeplatform_response_map_info_features_public_transport() }
            , {'fares', boolean() }
            , {'postcodes', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

