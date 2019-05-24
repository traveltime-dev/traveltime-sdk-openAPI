-module(traveltimeplatform_request_time_filter_postcodes_property).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_postcodes_property/0]).

-export_type([traveltimeplatform_request_time_filter_postcodes_property/0]).

-type traveltimeplatform_request_time_filter_postcodes_property() ::
  binary().

traveltimeplatform_request_time_filter_postcodes_property() ->
  elements([<<"travel_time">>, <<"distance">>]).

