-module(traveltimeplatform_request_time_filter_departure_search).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_departure_search/0]).

-export_type([traveltimeplatform_request_time_filter_departure_search/0]).

-type traveltimeplatform_request_time_filter_departure_search() ::
  [ {'id', binary() }
  | {'departure_location_id', binary() }
  | {'arrival_location_ids', list(binary()) }
  | {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
  | {'travel_time', integer() }
  | {'departure_time', datetime() }
  | {'properties', list(traveltimeplatform_request_time_filter_property:traveltimeplatform_request_time_filter_property()) }
  | {'range', traveltimeplatform_request_range_full:traveltimeplatform_request_range_full() }
  ].

traveltimeplatform_request_time_filter_departure_search() ->
  [ {'id', binary() }
  , {'departure_location_id', binary() }
  , {'arrival_location_ids', list(binary(), 1, 2000) }
  , {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
  , {'travel_time', integer(60, 14400) }
  , {'departure_time', datetime() }
  , {'properties', list(traveltimeplatform_request_time_filter_property:traveltimeplatform_request_time_filter_property()) }
  , {'range', traveltimeplatform_request_range_full:traveltimeplatform_request_range_full() }
  ].
