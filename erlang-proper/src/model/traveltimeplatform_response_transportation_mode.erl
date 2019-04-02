-module(traveltimeplatform_response_transportation_mode).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_transportation_mode/0]).

-export_type([traveltimeplatform_response_transportation_mode/0]).

-type traveltimeplatform_response_transportation_mode() ::
  binary().

traveltimeplatform_response_transportation_mode() ->
  elements([<<"car">>, <<"parking">>, <<"boarding">>, <<"walk">>, <<"bike">>, <<"train">>, <<"rail_national">>, <<"rail_overground">>, <<"rail_underground">>, <<"rail_dlr">>, <<"bus">>, <<"cable_car">>, <<"plane">>, <<"ferry">>, <<"coach">>]).
  
