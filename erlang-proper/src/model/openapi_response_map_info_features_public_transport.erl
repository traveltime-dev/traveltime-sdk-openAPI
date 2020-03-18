-module(openapi_response_map_info_features_public_transport).

-include("openapi.hrl").

-export([openapi_response_map_info_features_public_transport/0]).

-export([openapi_response_map_info_features_public_transport/1]).

-export_type([openapi_response_map_info_features_public_transport/0]).

-type openapi_response_map_info_features_public_transport() ::
  [ {'date_start', datetime() }
  | {'date_end', datetime() }
  ].


openapi_response_map_info_features_public_transport() ->
    openapi_response_map_info_features_public_transport([]).

openapi_response_map_info_features_public_transport(Fields) ->
  Default = [ {'date_start', datetime() }
            , {'date_end', datetime() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

