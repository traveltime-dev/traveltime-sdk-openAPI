-module(traveltimeplatform_response_route).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_route/0]).

-export([traveltimeplatform_response_route/1]).

-export_type([traveltimeplatform_response_route/0]).

-type traveltimeplatform_response_route() ::
  [ {'departure_time', datetime() }
  | {'arrival_time', datetime() }
  | {'parts', list(traveltimeplatform_response_route_part:traveltimeplatform_response_route_part()) }
  ].


traveltimeplatform_response_route() ->
    traveltimeplatform_response_route([]).

traveltimeplatform_response_route(Fields) ->
  Default = [ {'departure_time', datetime() }
            , {'arrival_time', datetime() }
            , {'parts', list(traveltimeplatform_response_route_part:traveltimeplatform_response_route_part()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

