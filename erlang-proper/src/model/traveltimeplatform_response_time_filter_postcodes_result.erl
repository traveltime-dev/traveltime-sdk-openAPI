-module(traveltimeplatform_response_time_filter_postcodes_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcodes_result/0]).

-export_type([traveltimeplatform_response_time_filter_postcodes_result/0]).

-type traveltimeplatform_response_time_filter_postcodes_result() ::
  [ {'search_id', binary() }
  | {'postcodes', list(traveltimeplatform_response_time_filter_postcode:traveltimeplatform_response_time_filter_postcode()) }
  ].

traveltimeplatform_response_time_filter_postcodes_result() ->
  [ {'search_id', binary() }
  , {'postcodes', list(traveltimeplatform_response_time_filter_postcode:traveltimeplatform_response_time_filter_postcode()) }
  ].
