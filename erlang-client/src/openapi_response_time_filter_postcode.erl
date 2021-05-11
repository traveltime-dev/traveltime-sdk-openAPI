-module(openapi_response_time_filter_postcode).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcode/0]).

-type openapi_response_time_filter_postcode() ::
    #{ 'code' := binary(),
       'properties' := list()
     }.

encode(#{ 'code' := Code,
          'properties' := Properties
        }) ->
    #{ 'code' => Code,
       'properties' => Properties
     }.
