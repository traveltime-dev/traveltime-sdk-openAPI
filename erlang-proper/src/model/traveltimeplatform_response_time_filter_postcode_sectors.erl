-module(traveltimeplatform_response_time_filter_postcode_sectors).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_sectors/0]).

-export_type([traveltimeplatform_response_time_filter_postcode_sectors/0]).

-type traveltimeplatform_response_time_filter_postcode_sectors() ::
  [ {'results', list(traveltimeplatform_response_time_filter_postcode_sectors_result:traveltimeplatform_response_time_filter_postcode_sectors_result()) }
  ].

traveltimeplatform_response_time_filter_postcode_sectors() ->
  [ {'results', list(traveltimeplatform_response_time_filter_postcode_sectors_result:traveltimeplatform_response_time_filter_postcode_sectors_result()) }
  ].
