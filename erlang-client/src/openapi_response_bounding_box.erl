-module(openapi_response_bounding_box).

-export([encode/1]).

-export_type([openapi_response_bounding_box/0]).

-type openapi_response_bounding_box() ::
    #{ 'envelope' := openapi_response_box:openapi_response_box(),
       'boxes' := list()
     }.

encode(#{ 'envelope' := Envelope,
          'boxes' := Boxes
        }) ->
    #{ 'envelope' => Envelope,
       'boxes' => Boxes
     }.
