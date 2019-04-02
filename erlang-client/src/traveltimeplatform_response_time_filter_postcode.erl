-module(traveltimeplatform_response_time_filter_postcode).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_postcode/0]).

-type traveltimeplatform_response_time_filter_postcode() ::
    #{ 'code' := traveltimeplatform_string:traveltimeplatform_string(),
       'properties' := list()
     }.

encode(#{ 'code' := Code,
          'properties' := Properties
        }) ->
    #{ 'code' => Code,
       'properties' => Properties
     }.
