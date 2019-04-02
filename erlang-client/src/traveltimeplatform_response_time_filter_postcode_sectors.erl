-module(traveltimeplatform_response_time_filter_postcode_sectors).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_sectors/0]).

-type traveltimeplatform_response_time_filter_postcode_sectors() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
