-module(openapi_response_time_filter_postcode_sector).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcode_sector/0]).

-type openapi_response_time_filter_postcode_sector() ::
    #{ 'code' := openapi_string:openapi_string(),
       'properties' := openapi_response_time_filter_postcode_sector_properties:openapi_response_time_filter_postcode_sector_properties()
     }.

encode(#{ 'code' := Code,
          'properties' := Properties
        }) ->
    #{ 'code' => Code,
       'properties' => Properties
     }.
