-module(openapi_response_map_info).

-include("openapi.hrl").

-export([openapi_response_map_info/0]).

-export([openapi_response_map_info/1]).

-export_type([openapi_response_map_info/0]).

-type openapi_response_map_info() ::
  [ {'maps', list(openapi_response_map_info_map:openapi_response_map_info_map()) }
  ].


openapi_response_map_info() ->
    openapi_response_map_info([]).

openapi_response_map_info(Fields) ->
  Default = [ {'maps', list(openapi_response_map_info_map:openapi_response_map_info_map()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

