-module(openapi_response_error).

-export([encode/1]).

-export_type([openapi_response_error/0]).

-type openapi_response_error() ::
    #{ 'http_status' => integer(),
       'error_code' => integer(),
       'description' => binary(),
       'documentation_link' => binary(),
       'additional_info' => maps:map()
     }.

encode(#{ 'http_status' := HttpStatus,
          'error_code' := ErrorCode,
          'description' := Description,
          'documentation_link' := DocumentationLink,
          'additional_info' := AdditionalInfo
        }) ->
    #{ 'http_status' => HttpStatus,
       'error_code' => ErrorCode,
       'description' => Description,
       'documentation_link' => DocumentationLink,
       'additional_info' => AdditionalInfo
     }.
