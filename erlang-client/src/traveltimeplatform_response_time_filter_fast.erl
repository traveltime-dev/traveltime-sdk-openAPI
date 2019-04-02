-module(traveltimeplatform_response_time_filter_fast).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter_fast/0]).

-type traveltimeplatform_response_time_filter_fast() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
