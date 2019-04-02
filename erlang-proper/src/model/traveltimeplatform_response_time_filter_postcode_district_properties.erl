-module(traveltimeplatform_response_time_filter_postcode_district_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_district_properties/0]).

-export_type([traveltimeplatform_response_time_filter_postcode_district_properties/0]).

-type traveltimeplatform_response_time_filter_postcode_district_properties() ::
  [ {'travel_time_reachable', traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics() }
  | {'travel_time_all', traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics() }
  | {'coverage', float() }
  ].

traveltimeplatform_response_time_filter_postcode_district_properties() ->
  [ {'travel_time_reachable', traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics() }
  , {'travel_time_all', traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics() }
  , {'coverage', float() }
  ].
