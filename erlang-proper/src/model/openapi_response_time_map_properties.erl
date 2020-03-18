-module(openapi_response_time_map_properties).

-include("openapi.hrl").

-export([openapi_response_time_map_properties/0]).

-export([openapi_response_time_map_properties/1]).

-export_type([openapi_response_time_map_properties/0]).

-type openapi_response_time_map_properties() ::
  [ {'is_only_walking', boolean() }
  ].


openapi_response_time_map_properties() ->
    openapi_response_time_map_properties([]).

openapi_response_time_map_properties(Fields) ->
  Default = [ {'is_only_walking', boolean() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

