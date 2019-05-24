-module(traveltimeplatform_request_time_map_property).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_map_property/0]).

-export_type([traveltimeplatform_request_time_map_property/0]).

-type traveltimeplatform_request_time_map_property() ::
  binary().

traveltimeplatform_request_time_map_property() ->
  elements([<<"is_only_walking">>]).

