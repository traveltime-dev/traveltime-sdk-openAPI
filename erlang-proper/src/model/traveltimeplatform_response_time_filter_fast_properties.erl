-module(traveltimeplatform_response_time_filter_fast_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_fast_properties/0]).

-export([traveltimeplatform_response_time_filter_fast_properties/1]).

-export_type([traveltimeplatform_response_time_filter_fast_properties/0]).

-type traveltimeplatform_response_time_filter_fast_properties() ::
  [ {'travel_time', integer() }
  | {'fares', traveltimeplatform_response_fares_fast:traveltimeplatform_response_fares_fast() }
  ].


traveltimeplatform_response_time_filter_fast_properties() ->
    traveltimeplatform_response_time_filter_fast_properties([]).

traveltimeplatform_response_time_filter_fast_properties(Fields) ->
  Default = [ {'travel_time', integer() }
            , {'fares', traveltimeplatform_response_fares_fast:traveltimeplatform_response_fares_fast() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

