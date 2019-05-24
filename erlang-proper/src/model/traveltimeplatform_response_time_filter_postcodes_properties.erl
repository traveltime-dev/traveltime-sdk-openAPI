-module(traveltimeplatform_response_time_filter_postcodes_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcodes_properties/0]).

-export([traveltimeplatform_response_time_filter_postcodes_properties/1]).

-export_type([traveltimeplatform_response_time_filter_postcodes_properties/0]).

-type traveltimeplatform_response_time_filter_postcodes_properties() ::
  [ {'travel_time', integer() }
  | {'distance', integer() }
  ].


traveltimeplatform_response_time_filter_postcodes_properties() ->
    traveltimeplatform_response_time_filter_postcodes_properties([]).

traveltimeplatform_response_time_filter_postcodes_properties(Fields) ->
  Default = [ {'travel_time', integer() }
            , {'distance', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

