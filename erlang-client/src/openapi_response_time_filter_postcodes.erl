-module(openapi_response_time_filter_postcodes).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcodes/0]).

-type openapi_response_time_filter_postcodes() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
