-module(openapi_response_distance_breakdown_item).

-export([encode/1]).

-export_type([openapi_response_distance_breakdown_item/0]).

-type openapi_response_distance_breakdown_item() ::
    #{ 'mode' := openapi_response_transportation_mode:openapi_response_transportation_mode(),
       'distance' := integer()
     }.

encode(#{ 'mode' := Mode,
          'distance' := Distance
        }) ->
    #{ 'mode' => Mode,
       'distance' => Distance
     }.
