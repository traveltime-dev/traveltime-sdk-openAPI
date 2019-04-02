-module(traveltimeplatform_response_time_filter_postcodes_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcodes_properties/0]).

-export_type([traveltimeplatform_response_time_filter_postcodes_properties/0]).

-type traveltimeplatform_response_time_filter_postcodes_properties() ::
  [ {'travel_time', integer() }
  | {'distance', integer() }
  ].

traveltimeplatform_response_time_filter_postcodes_properties() ->
  [ {'travel_time', integer() }
  , {'distance', integer() }
  ].
