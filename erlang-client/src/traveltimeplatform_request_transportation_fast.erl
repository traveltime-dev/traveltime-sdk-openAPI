-module(traveltimeplatform_request_transportation_fast).

-export([encode/1]).

-export_type([traveltimeplatform_request_transportation_fast/0]).

-type traveltimeplatform_request_transportation_fast() ::
    #{ 'type' := binary()
     }.

encode(#{ 'type' := Type
        }) ->
    #{ 'type' => Type
     }.
