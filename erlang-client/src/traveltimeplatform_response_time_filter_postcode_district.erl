-module(traveltimeplatform_response_time_filter_postcode_district).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_district/0]).

-type traveltimeplatform_response_time_filter_postcode_district() ::
    #{ 'code' := traveltimeplatform_string:traveltimeplatform_string(),
       'properties' := traveltimeplatform_response_time_filter_postcode_district_properties:traveltimeplatform_response_time_filter_postcode_district_properties()
     }.

encode(#{ 'code' := Code,
          'properties' := Properties
        }) ->
    #{ 'code' => Code,
       'properties' => Properties
     }.
