-module(openapi_response_time_map).

-include("openapi.hrl").

-export([openapi_response_time_map/0]).

-export([openapi_response_time_map/1]).

-export_type([openapi_response_time_map/0]).

-type openapi_response_time_map() ::
  [ {'results', list(openapi_response_time_map_result:openapi_response_time_map_result()) }
  ].


openapi_response_time_map() ->
    openapi_response_time_map([]).

openapi_response_time_map(Fields) ->
  Default = [ {'results', list(openapi_response_time_map_result:openapi_response_time_map_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

