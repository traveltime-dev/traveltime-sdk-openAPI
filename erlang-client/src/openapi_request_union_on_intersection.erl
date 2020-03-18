-module(openapi_request_union_on_intersection).

-export([encode/1]).

-export_type([openapi_request_union_on_intersection/0]).

-type openapi_request_union_on_intersection() ::
    #{ 'id' := binary(),
       'search_ids' := list()
     }.

encode(#{ 'id' := Id,
          'search_ids' := SearchIds
        }) ->
    #{ 'id' => Id,
       'search_ids' => SearchIds
     }.
