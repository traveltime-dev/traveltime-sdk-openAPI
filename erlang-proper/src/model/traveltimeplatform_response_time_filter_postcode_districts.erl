-module(traveltimeplatform_response_time_filter_postcode_districts).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_districts/0]).

-export_type([traveltimeplatform_response_time_filter_postcode_districts/0]).

-type traveltimeplatform_response_time_filter_postcode_districts() ::
  [ {'results', list(traveltimeplatform_response_time_filter_postcode_districts_result:traveltimeplatform_response_time_filter_postcode_districts_result()) }
  ].

traveltimeplatform_response_time_filter_postcode_districts() ->
  [ {'results', list(traveltimeplatform_response_time_filter_postcode_districts_result:traveltimeplatform_response_time_filter_postcode_districts_result()) }
  ].
