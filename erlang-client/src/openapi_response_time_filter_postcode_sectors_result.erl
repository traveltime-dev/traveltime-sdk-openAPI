-module(openapi_response_time_filter_postcode_sectors_result).

-export([encode/1]).

-export_type([openapi_response_time_filter_postcode_sectors_result/0]).

-type openapi_response_time_filter_postcode_sectors_result() ::
    #{ 'search_id' := binary(),
       'sectors' := list()
     }.

encode(#{ 'search_id' := SearchId,
          'sectors' := Sectors
        }) ->
    #{ 'search_id' => SearchId,
       'sectors' => Sectors
     }.
