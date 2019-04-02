-module(traveltimeplatform_response_bounding_box).

-export([encode/1]).

-export_type([traveltimeplatform_response_bounding_box/0]).

-type traveltimeplatform_response_bounding_box() ::
    #{ 'envelope' := traveltimeplatform_response_box:traveltimeplatform_response_box(),
       'boxes' := list()
     }.

encode(#{ 'envelope' := Envelope,
          'boxes' := Boxes
        }) ->
    #{ 'envelope' => Envelope,
       'boxes' => Boxes
     }.
