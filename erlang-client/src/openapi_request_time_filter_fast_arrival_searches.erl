-module(openapi_request_time_filter_fast_arrival_searches).

-export([encode/1]).

-export_type([openapi_request_time_filter_fast_arrival_searches/0]).

-type openapi_request_time_filter_fast_arrival_searches() ::
    #{ 'many_to_one' => list(),
       'one_to_many' => list()
     }.

encode(#{ 'many_to_one' := ManyToOne,
          'one_to_many' := OneToMany
        }) ->
    #{ 'many_to_one' => ManyToOne,
       'one_to_many' => OneToMany
     }.
