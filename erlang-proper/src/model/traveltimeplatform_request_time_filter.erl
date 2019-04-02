-module(traveltimeplatform_request_time_filter).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter/0]).

-export_type([traveltimeplatform_request_time_filter/0]).

-type traveltimeplatform_request_time_filter() ::
  [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location()) }
  | {'departure_searches', list(traveltimeplatform_request_time_filter_departure_search:traveltimeplatform_request_time_filter_departure_search()) }
  | {'arrival_searches', list(traveltimeplatform_request_time_filter_arrival_search:traveltimeplatform_request_time_filter_arrival_search()) }
  ].

traveltimeplatform_request_time_filter() ->
  [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location(), 1) }
  , {'departure_searches', list(traveltimeplatform_request_time_filter_departure_search:traveltimeplatform_request_time_filter_departure_search()) }
  , {'arrival_searches', list(traveltimeplatform_request_time_filter_arrival_search:traveltimeplatform_request_time_filter_arrival_search()) }
  ].
