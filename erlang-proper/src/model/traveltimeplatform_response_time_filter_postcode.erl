-module(traveltimeplatform_response_time_filter_postcode).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode/0]).

-export_type([traveltimeplatform_response_time_filter_postcode/0]).

-type traveltimeplatform_response_time_filter_postcode() ::
  [ {'code', traveltimeplatform_string:traveltimeplatform_string() }
  | {'properties', list(traveltimeplatform_response_time_filter_postcodes_properties:traveltimeplatform_response_time_filter_postcodes_properties()) }
  ].

traveltimeplatform_response_time_filter_postcode() ->
  [ {'code', traveltimeplatform_string:traveltimeplatform_string() }
  , {'properties', list(traveltimeplatform_response_time_filter_postcodes_properties:traveltimeplatform_response_time_filter_postcodes_properties()) }
  ].
