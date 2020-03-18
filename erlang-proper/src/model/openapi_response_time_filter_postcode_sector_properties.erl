-module(openapi_response_time_filter_postcode_sector_properties).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcode_sector_properties/0]).

-export([openapi_response_time_filter_postcode_sector_properties/1]).

-export_type([openapi_response_time_filter_postcode_sector_properties/0]).

-type openapi_response_time_filter_postcode_sector_properties() ::
  [ {'travel_time_reachable', openapi_response_travel_time_statistics:openapi_response_travel_time_statistics() }
  | {'travel_time_all', openapi_response_travel_time_statistics:openapi_response_travel_time_statistics() }
  | {'coverage', float() }
  ].


openapi_response_time_filter_postcode_sector_properties() ->
    openapi_response_time_filter_postcode_sector_properties([]).

openapi_response_time_filter_postcode_sector_properties(Fields) ->
  Default = [ {'travel_time_reachable', openapi_response_travel_time_statistics:openapi_response_travel_time_statistics() }
            , {'travel_time_all', openapi_response_travel_time_statistics:openapi_response_travel_time_statistics() }
            , {'coverage', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

