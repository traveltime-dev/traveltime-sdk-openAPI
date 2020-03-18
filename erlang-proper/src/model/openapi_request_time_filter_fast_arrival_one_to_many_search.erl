-module(openapi_request_time_filter_fast_arrival_one_to_many_search).

-include("openapi.hrl").

-export([openapi_request_time_filter_fast_arrival_one_to_many_search/0]).

-export([openapi_request_time_filter_fast_arrival_one_to_many_search/1]).

-export_type([openapi_request_time_filter_fast_arrival_one_to_many_search/0]).

-type openapi_request_time_filter_fast_arrival_one_to_many_search() ::
  [ {'id', binary() }
  | {'departure_location_id', binary() }
  | {'arrival_location_ids', list(binary()) }
  | {'transportation', openapi_request_transportation_fast:openapi_request_transportation_fast() }
  | {'travel_time', integer() }
  | {'arrival_time_period', openapi_request_arrival_time_period:openapi_request_arrival_time_period() }
  | {'properties', list(openapi_request_time_filter_fast_property:openapi_request_time_filter_fast_property()) }
  ].


openapi_request_time_filter_fast_arrival_one_to_many_search() ->
    openapi_request_time_filter_fast_arrival_one_to_many_search([]).

openapi_request_time_filter_fast_arrival_one_to_many_search(Fields) ->
  Default = [ {'id', binary() }
            , {'departure_location_id', binary() }
            , {'arrival_location_ids', list(binary(), 1, 100000) }
            , {'transportation', openapi_request_transportation_fast:openapi_request_transportation_fast() }
            , {'travel_time', integer(60, 14400) }
            , {'arrival_time_period', openapi_request_arrival_time_period:openapi_request_arrival_time_period() }
            , {'properties', list(openapi_request_time_filter_fast_property:openapi_request_time_filter_fast_property()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

