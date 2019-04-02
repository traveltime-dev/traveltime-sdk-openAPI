-module(traveltimeplatform_response_time_filter_postcode_districts_result).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_districts_result/0]).

-type traveltimeplatform_response_time_filter_postcode_districts_result() ::
    #{ 'search_id' := binary(),
       'districts' := list()
     }.

encode(#{ 'search_id' := SearchId,
          'districts' := Districts
        }) ->
    #{ 'search_id' => SearchId,
       'districts' => Districts
     }.
