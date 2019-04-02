-module(traveltimeplatform_response_box).

-export([encode/1]).

-export_type([traveltimeplatform_response_box/0]).

-type traveltimeplatform_response_box() ::
    #{ 'min_lat' := float(),
       'max_lat' := float(),
       'min_lng' := float(),
       'max_lng' := float()
     }.

encode(#{ 'min_lat' := MinLat,
          'max_lat' := MaxLat,
          'min_lng' := MinLng,
          'max_lng' := MaxLng
        }) ->
    #{ 'min_lat' => MinLat,
       'max_lat' => MaxLat,
       'min_lng' => MinLng,
       'max_lng' => MaxLng
     }.
