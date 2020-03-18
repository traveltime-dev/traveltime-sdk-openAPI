-module(openapi_response_time_filter_postcodes_result).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcodes_result/0]).

-type openapi_response_time_filter_postcodes_result() ::
    #{ 'search_id' := binary(),
       'postcodes' := list()
     }.

encode(#{ 'search_id' := SearchId,
          'postcodes' := Postcodes
        }) ->
    #{ 'search_id' => SearchId,
       'postcodes' => Postcodes
     }.
