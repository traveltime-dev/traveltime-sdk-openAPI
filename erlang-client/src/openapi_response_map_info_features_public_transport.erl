-module(openapi_response_map_info_features_public_transport).

-export([encode/1]).

-export_type([openapi_response_map_info_features_public_transport/0]).

-type openapi_response_map_info_features_public_transport() ::
    #{ 'date_start' := openapi_date_time:openapi_date_time(),
       'date_end' := openapi_date_time:openapi_date_time()
     }.

encode(#{ 'date_start' := DateStart,
          'date_end' := DateEnd
        }) ->
    #{ 'date_start' => DateStart,
       'date_end' => DateEnd
     }.
