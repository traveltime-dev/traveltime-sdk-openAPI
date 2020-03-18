-module(openapi_request_time_filter_postcode_sectors_departure_search).

-include("openapi.hrl").

-export([openapi_request_time_filter_postcode_sectors_departure_search/0]).

-export([openapi_request_time_filter_postcode_sectors_departure_search/1]).

-export_type([openapi_request_time_filter_postcode_sectors_departure_search/0]).

-type openapi_request_time_filter_postcode_sectors_departure_search() ::
  [ {'id', binary() }
  | {'transportation', openapi_request_transportation:openapi_request_transportation() }
  | {'travel_time', integer() }
  | {'departure_time', datetime() }
  | {'reachable_postcodes_threshold', float() }
  | {'properties', list(openapi_request_time_filter_postcode_sectors_property:openapi_request_time_filter_postcode_sectors_property()) }
  | {'range', openapi_request_range_full:openapi_request_range_full() }
  ].


openapi_request_time_filter_postcode_sectors_departure_search() ->
    openapi_request_time_filter_postcode_sectors_departure_search([]).

openapi_request_time_filter_postcode_sectors_departure_search(Fields) ->
  Default = [ {'id', binary() }
            , {'transportation', openapi_request_transportation:openapi_request_transportation() }
            , {'travel_time', integer(60, 14400) }
            , {'departure_time', datetime() }
            , {'reachable_postcodes_threshold', float() }
            , {'properties', list(openapi_request_time_filter_postcode_sectors_property:openapi_request_time_filter_postcode_sectors_property()) }
            , {'range', openapi_request_range_full:openapi_request_range_full() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

