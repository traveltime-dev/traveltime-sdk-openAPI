-module(openapi_request_range_full).

-export([encode/1]).

-export_type([openapi_request_range_full/0]).

-type openapi_request_range_full() ::
    #{ 'enabled' := boolean(),
       'max_results' := integer(),
       'width' := integer()
     }.

encode(#{ 'enabled' := Enabled,
          'max_results' := MaxResults,
          'width' := Width
        }) ->
    #{ 'enabled' => Enabled,
       'max_results' => MaxResults,
       'width' => Width
     }.
