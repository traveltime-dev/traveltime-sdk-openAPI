-module(traveltimeplatform_response_time_filter_postcode_sector).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_sector/0]).

-type traveltimeplatform_response_time_filter_postcode_sector() ::
    #{ 'code' := traveltimeplatform_string:traveltimeplatform_string(),
       'properties' := traveltimeplatform_response_time_filter_postcode_sector_properties:traveltimeplatform_response_time_filter_postcode_sector_properties()
     }.

encode(#{ 'code' := Code,
          'properties' := Properties
        }) ->
    #{ 'code' => Code,
       'properties' => Properties
     }.
