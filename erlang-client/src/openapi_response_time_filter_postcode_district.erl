-module(openapi_response_time_filter_postcode_district).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcode_district/0]).

-type openapi_response_time_filter_postcode_district() ::
    #{ 'code' := binary(),
       'properties' := openapi_response_time_filter_postcode_district_properties:openapi_response_time_filter_postcode_district_properties()
     }.

encode(#{ 'code' := Code,
          'properties' := Properties
        }) ->
    #{ 'code' => Code,
       'properties' => Properties
     }.
