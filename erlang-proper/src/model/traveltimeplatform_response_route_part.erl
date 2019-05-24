-module(traveltimeplatform_response_route_part).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_route_part/0]).

-export([traveltimeplatform_response_route_part/1]).

-export_type([traveltimeplatform_response_route_part/0]).

-type traveltimeplatform_response_route_part() ::
  [ {'id', binary() }
  | {'type', binary() }
  | {'mode', traveltimeplatform_response_transportation_mode:traveltimeplatform_response_transportation_mode() }
  | {'directions', binary() }
  | {'distance', integer() }
  | {'travel_time', integer() }
  | {'coords', list(traveltimeplatform_coords:traveltimeplatform_coords()) }
  | {'direction', binary() }
  | {'road', binary() }
  | {'turn', binary() }
  | {'line', binary() }
  | {'departure_station', binary() }
  | {'arrival_station', binary() }
  | {'departs_at', binary() }
  | {'arrives_at', binary() }
  | {'num_stops', integer() }
  ].


traveltimeplatform_response_route_part() ->
    traveltimeplatform_response_route_part([]).

traveltimeplatform_response_route_part(Fields) ->
  Default = [ {'id', binary() }
            , {'type', elements([<<"basic">>, <<"start_end">>, <<"road">>, <<"public_transport">>]) }
            , {'mode', traveltimeplatform_response_transportation_mode:traveltimeplatform_response_transportation_mode() }
            , {'directions', binary() }
            , {'distance', integer() }
            , {'travel_time', integer() }
            , {'coords', list(traveltimeplatform_coords:traveltimeplatform_coords()) }
            , {'direction', binary() }
            , {'road', binary() }
            , {'turn', binary() }
            , {'line', binary() }
            , {'departure_station', binary() }
            , {'arrival_station', binary() }
            , {'departs_at', binary() }
            , {'arrives_at', binary() }
            , {'num_stops', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

