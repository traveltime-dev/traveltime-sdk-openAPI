-module(openapi_response_time_map_wkt).

-include("openapi.hrl").

-export([openapi_response_time_map_wkt/0]).

-export([openapi_response_time_map_wkt/1]).

-export_type([openapi_response_time_map_wkt/0]).

-type openapi_response_time_map_wkt() ::
  [ {'results', list(openapi_response_time_map_wkt_result:openapi_response_time_map_wkt_result()) }
  ].


openapi_response_time_map_wkt() ->
    openapi_response_time_map_wkt([]).

openapi_response_time_map_wkt(Fields) ->
  Default = [ {'results', list(openapi_response_time_map_wkt_result:openapi_response_time_map_wkt_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

