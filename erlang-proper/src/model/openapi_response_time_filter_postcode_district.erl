-module(openapi_response_time_filter_postcode_district).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcode_district/0]).

-export([openapi_response_time_filter_postcode_district/1]).

-export_type([openapi_response_time_filter_postcode_district/0]).

-type openapi_response_time_filter_postcode_district() ::
  [ {'code', binary() }
  | {'properties', openapi_response_time_filter_postcode_district_properties:openapi_response_time_filter_postcode_district_properties() }
  ].


openapi_response_time_filter_postcode_district() ->
    openapi_response_time_filter_postcode_district([]).

openapi_response_time_filter_postcode_district(Fields) ->
  Default = [ {'code', binary() }
            , {'properties', openapi_response_time_filter_postcode_district_properties:openapi_response_time_filter_postcode_district_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

