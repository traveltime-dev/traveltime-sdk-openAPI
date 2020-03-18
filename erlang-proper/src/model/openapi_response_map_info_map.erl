-module(openapi_response_map_info_map).

-include("openapi.hrl").

-export([openapi_response_map_info_map/0]).

-export([openapi_response_map_info_map/1]).

-export_type([openapi_response_map_info_map/0]).

-type openapi_response_map_info_map() ::
  [ {'name', binary() }
  | {'features', openapi_response_map_info_features:openapi_response_map_info_features() }
  ].


openapi_response_map_info_map() ->
    openapi_response_map_info_map([]).

openapi_response_map_info_map(Fields) ->
  Default = [ {'name', binary() }
            , {'features', openapi_response_map_info_features:openapi_response_map_info_features() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

