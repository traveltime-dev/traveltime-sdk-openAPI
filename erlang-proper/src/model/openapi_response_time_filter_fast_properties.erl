-module(openapi_response_time_filter_fast_properties).

-include("openapi.hrl").

-export([openapi_response_time_filter_fast_properties/0]).

-export([openapi_response_time_filter_fast_properties/1]).

-export_type([openapi_response_time_filter_fast_properties/0]).

-type openapi_response_time_filter_fast_properties() ::
  [ {'travel_time', integer() }
  | {'fares', openapi_response_fares_fast:openapi_response_fares_fast() }
  ].


openapi_response_time_filter_fast_properties() ->
    openapi_response_time_filter_fast_properties([]).

openapi_response_time_filter_fast_properties(Fields) ->
  Default = [ {'travel_time', integer() }
            , {'fares', openapi_response_fares_fast:openapi_response_fares_fast() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

