-module(openapi_response_route_part).

-include("openapi.hrl").

-export([openapi_response_route_part/0]).

-export([openapi_response_route_part/1]).

-export_type([openapi_response_route_part/0]).

-type openapi_response_route_part() ::
  [ {'id', binary() }
  | {'type', binary() }
  | {'mode', openapi_response_transportation_mode:openapi_response_transportation_mode() }
  | {'directions', binary() }
  | {'distance', integer() }
  | {'travel_time', integer() }
  | {'coords', list(openapi_coords:openapi_coords()) }
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


openapi_response_route_part() ->
    openapi_response_route_part([]).

openapi_response_route_part(Fields) ->
  Default = [ {'id', binary() }
            , {'type', elements([<<"basic">>, <<"start_end">>, <<"road">>, <<"public_transport">>]) }
            , {'mode', openapi_response_transportation_mode:openapi_response_transportation_mode() }
            , {'directions', binary() }
            , {'distance', integer() }
            , {'travel_time', integer() }
            , {'coords', list(openapi_coords:openapi_coords()) }
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

