-module(traveltimeplatform_request_time_filter_postcode_sectors).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_postcode_sectors/0]).

-export_type([traveltimeplatform_request_time_filter_postcode_sectors/0]).

-type traveltimeplatform_request_time_filter_postcode_sectors() ::
  [ {'departure_searches', list(traveltimeplatform_request_time_filter_postcode_sectors_departure_search:traveltimeplatform_request_time_filter_postcode_sectors_departure_search()) }
  | {'arrival_searches', list(traveltimeplatform_request_time_filter_postcode_sectors_arrival_search:traveltimeplatform_request_time_filter_postcode_sectors_arrival_search()) }
  ].

traveltimeplatform_request_time_filter_postcode_sectors() ->
  [ {'departure_searches', list(traveltimeplatform_request_time_filter_postcode_sectors_departure_search:traveltimeplatform_request_time_filter_postcode_sectors_departure_search()) }
  , {'arrival_searches', list(traveltimeplatform_request_time_filter_postcode_sectors_arrival_search:traveltimeplatform_request_time_filter_postcode_sectors_arrival_search()) }
  ].
