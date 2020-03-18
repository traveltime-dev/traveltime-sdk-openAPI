-module(openapi_response_time_filter_postcode_sector).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcode_sector/0]).

-export([openapi_response_time_filter_postcode_sector/1]).

-export_type([openapi_response_time_filter_postcode_sector/0]).

-type openapi_response_time_filter_postcode_sector() ::
  [ {'code', openapi_string:openapi_string() }
  | {'properties', openapi_response_time_filter_postcode_sector_properties:openapi_response_time_filter_postcode_sector_properties() }
  ].


openapi_response_time_filter_postcode_sector() ->
    openapi_response_time_filter_postcode_sector([]).

openapi_response_time_filter_postcode_sector(Fields) ->
  Default = [ {'code', openapi_string:openapi_string() }
            , {'properties', openapi_response_time_filter_postcode_sector_properties:openapi_response_time_filter_postcode_sector_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

