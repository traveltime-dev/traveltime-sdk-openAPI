-module(traveltimeplatform_response_time_filter).

-export([encode/1]).

-export_type([traveltimeplatform_response_time_filter/0]).

-type traveltimeplatform_response_time_filter() ::
    #{ 'results' := list()
     }.

encode(#{ 'results' := Results
        }) ->
    #{ 'results' => Results
     }.
