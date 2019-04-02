-module(traveltimeplatform_response_time_filter_postcode_districts_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_districts_result/0]).

-export_type([traveltimeplatform_response_time_filter_postcode_districts_result/0]).

-type traveltimeplatform_response_time_filter_postcode_districts_result() ::
  [ {'search_id', binary() }
  | {'districts', list(traveltimeplatform_response_time_filter_postcode_district:traveltimeplatform_response_time_filter_postcode_district()) }
  ].

traveltimeplatform_response_time_filter_postcode_districts_result() ->
  [ {'search_id', binary() }
  , {'districts', list(traveltimeplatform_response_time_filter_postcode_district:traveltimeplatform_response_time_filter_postcode_district()) }
  ].
