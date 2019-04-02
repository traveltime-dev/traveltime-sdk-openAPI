-module(traveltimeplatform_request_time_filter_postcode_sectors_property).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_postcode_sectors_property/0]).

-export_type([traveltimeplatform_request_time_filter_postcode_sectors_property/0]).

-type traveltimeplatform_request_time_filter_postcode_sectors_property() ::
  binary().

traveltimeplatform_request_time_filter_postcode_sectors_property() ->
  elements([<<"travel_time_reachable">>, <<"travel_time_all">>, <<"coverage">>]).
  
