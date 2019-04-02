-module(traveltimeplatform_request_time_filter_postcodes_arrival_search).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_postcodes_arrival_search/0]).

-export_type([traveltimeplatform_request_time_filter_postcodes_arrival_search/0]).

-type traveltimeplatform_request_time_filter_postcodes_arrival_search() ::
  [ {'id', binary() }
  | {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
  | {'travel_time', integer() }
  | {'arrival_time', datetime() }
  | {'properties', list(traveltimeplatform_request_time_filter_postcodes_property:traveltimeplatform_request_time_filter_postcodes_property()) }
  | {'range', traveltimeplatform_request_range_full:traveltimeplatform_request_range_full() }
  ].

traveltimeplatform_request_time_filter_postcodes_arrival_search() ->
  [ {'id', binary() }
  , {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
  , {'travel_time', integer(60, 14400) }
  , {'arrival_time', datetime() }
  , {'properties', list(traveltimeplatform_request_time_filter_postcodes_property:traveltimeplatform_request_time_filter_postcodes_property()) }
  , {'range', traveltimeplatform_request_range_full:traveltimeplatform_request_range_full() }
  ].