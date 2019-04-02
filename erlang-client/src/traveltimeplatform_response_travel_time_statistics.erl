-module(traveltimeplatform_response_travel_time_statistics).

-export([encode/1]).

-export_type([traveltimeplatform_response_travel_time_statistics/0]).

-type traveltimeplatform_response_travel_time_statistics() ::
    #{ 'min' := integer(),
       'max' := integer(),
       'mean' := integer(),
       'median' := integer()
     }.

encode(#{ 'min' := Min,
          'max' := Max,
          'mean' := Mean,
          'median' := Median
        }) ->
    #{ 'min' => Min,
       'max' => Max,
       'mean' => Mean,
       'median' => Median
     }.
