-module(openapi_response_time_filter_postcode_districts).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcode_districts/0]).

-type openapi_response_time_filter_postcode_districts() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
