-module(openapi_request_level_of_detail).

-export([encode/1]).

-export_type([openapi_request_level_of_detail/0]).

-type openapi_request_level_of_detail() ::
    #{ 'scale_type' := binary(),
       'level' := binary()
     }.

encode(#{ 'scale_type' := ScaleType,
          'level' := Level
        }) ->
    #{ 'scale_type' => ScaleType,
       'level' => Level
     }.
