-module(traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search/0]).

-export_type([traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search/0]).

-type traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search() ::
  [ {'id', binary() }
  | {'arrival_location_id', binary() }
  | {'departure_location_ids', list(binary()) }
  | {'transportation', traveltimeplatform_request_transportation_fast:traveltimeplatform_request_transportation_fast() }
  | {'travel_time', integer() }
  | {'arrival_time_period', traveltimeplatform_request_arrival_time_period:traveltimeplatform_request_arrival_time_period() }
  | {'properties', list(traveltimeplatform_request_time_filter_fast_property:traveltimeplatform_request_time_filter_fast_property()) }
  ].

traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search() ->
  [ {'id', binary() }
  , {'arrival_location_id', binary() }
  , {'departure_location_ids', list(binary(), 1, 100000) }
  , {'transportation', traveltimeplatform_request_transportation_fast:traveltimeplatform_request_transportation_fast() }
  , {'travel_time', integer(60, 14400) }
  , {'arrival_time_period', traveltimeplatform_request_arrival_time_period:traveltimeplatform_request_arrival_time_period() }
  , {'properties', list(traveltimeplatform_request_time_filter_fast_property:traveltimeplatform_request_time_filter_fast_property()) }
  ].
