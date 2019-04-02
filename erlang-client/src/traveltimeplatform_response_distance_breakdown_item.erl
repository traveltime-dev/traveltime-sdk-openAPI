-module(traveltimeplatform_response_distance_breakdown_item).

-export([encode/1]).

-export_type([traveltimeplatform_response_distance_breakdown_item/0]).

-type traveltimeplatform_response_distance_breakdown_item() ::
    #{ 'mode' := traveltimeplatform_response_transportation_mode:traveltimeplatform_response_transportation_mode(),
       'distance' := integer()
     }.

encode(#{ 'mode' := Mode,
          'distance' := Distance
        }) ->
    #{ 'mode' => Mode,
       'distance' => Distance
     }.
