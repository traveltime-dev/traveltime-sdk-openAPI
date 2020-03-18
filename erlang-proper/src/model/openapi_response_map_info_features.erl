-module(openapi_response_map_info_features).

-include("openapi.hrl").

-export([openapi_response_map_info_features/0]).

-export([openapi_response_map_info_features/1]).

-export_type([openapi_response_map_info_features/0]).

-type openapi_response_map_info_features() ::
  [ {'public_transport', openapi_response_map_info_features_public_transport:openapi_response_map_info_features_public_transport() }
  | {'fares', boolean() }
  | {'postcodes', boolean() }
  ].


openapi_response_map_info_features() ->
    openapi_response_map_info_features([]).

openapi_response_map_info_features(Fields) ->
  Default = [ {'public_transport', openapi_response_map_info_features_public_transport:openapi_response_map_info_features_public_transport() }
            , {'fares', boolean() }
            , {'postcodes', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

