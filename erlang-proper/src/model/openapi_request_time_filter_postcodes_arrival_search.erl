-module(openapi_request_time_filter_postcodes_arrival_search).

-include("openapi.hrl").

-export([openapi_request_time_filter_postcodes_arrival_search/0]).

-export([openapi_request_time_filter_postcodes_arrival_search/1]).

-export_type([openapi_request_time_filter_postcodes_arrival_search/0]).

-type openapi_request_time_filter_postcodes_arrival_search() ::
  [ {'id', binary() }
  | {'transportation', openapi_request_transportation:openapi_request_transportation() }
  | {'travel_time', integer() }
  | {'arrival_time', datetime() }
  | {'properties', list(openapi_request_time_filter_postcodes_property:openapi_request_time_filter_postcodes_property()) }
  | {'range', openapi_request_range_full:openapi_request_range_full() }
  ].


openapi_request_time_filter_postcodes_arrival_search() ->
    openapi_request_time_filter_postcodes_arrival_search([]).

openapi_request_time_filter_postcodes_arrival_search(Fields) ->
  Default = [ {'id', binary() }
            , {'transportation', openapi_request_transportation:openapi_request_transportation() }
            , {'travel_time', integer(60, 14400) }
            , {'arrival_time', datetime() }
            , {'properties', list(openapi_request_time_filter_postcodes_property:openapi_request_time_filter_postcodes_property()) }
            , {'range', openapi_request_range_full:openapi_request_range_full() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

