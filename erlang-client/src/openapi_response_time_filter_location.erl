-module(openapi_response_time_filter_location).

-export([encode/1]).

-export_type([openapi_response_time_filter_location/0]).

-type openapi_response_time_filter_location() ::
    #{ 'id' := binary(),
       'properties' := list()
     }.

encode(#{ 'id' := Id,
          'properties' := Properties
        }) ->
    #{ 'id' => Id,
       'properties' => Properties
     }.
