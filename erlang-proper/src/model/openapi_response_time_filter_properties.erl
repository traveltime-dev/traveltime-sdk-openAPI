-module(openapi_response_time_filter_properties).

-include("openapi.hrl").

-export([openapi_response_time_filter_properties/0]).

-export([openapi_response_time_filter_properties/1]).

-export_type([openapi_response_time_filter_properties/0]).

-type openapi_response_time_filter_properties() ::
  [ {'travel_time', integer() }
  | {'distance', integer() }
  | {'distance_breakdown', list(openapi_response_distance_breakdown_item:openapi_response_distance_breakdown_item()) }
  | {'fares', openapi_response_fares:openapi_response_fares() }
  | {'route', openapi_response_route:openapi_response_route() }
  ].


openapi_response_time_filter_properties() ->
    openapi_response_time_filter_properties([]).

openapi_response_time_filter_properties(Fields) ->
  Default = [ {'travel_time', integer() }
            , {'distance', integer() }
            , {'distance_breakdown', list(openapi_response_distance_breakdown_item:openapi_response_distance_breakdown_item()) }
            , {'fares', openapi_response_fares:openapi_response_fares() }
            , {'route', openapi_response_route:openapi_response_route() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

