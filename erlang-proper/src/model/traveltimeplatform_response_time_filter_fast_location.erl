-module(traveltimeplatform_response_time_filter_fast_location).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_fast_location/0]).

-export_type([traveltimeplatform_response_time_filter_fast_location/0]).

-type traveltimeplatform_response_time_filter_fast_location() ::
  [ {'id', binary() }
  | {'properties', list(traveltimeplatform_response_time_filter_fast_properties:traveltimeplatform_response_time_filter_fast_properties()) }
  ].

traveltimeplatform_response_time_filter_fast_location() ->
  [ {'id', binary() }
  , {'properties', list(traveltimeplatform_response_time_filter_fast_properties:traveltimeplatform_response_time_filter_fast_properties()) }
  ].
