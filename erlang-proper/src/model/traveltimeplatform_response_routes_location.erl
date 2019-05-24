-module(traveltimeplatform_response_routes_location).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_routes_location/0]).

-export([traveltimeplatform_response_routes_location/1]).

-export_type([traveltimeplatform_response_routes_location/0]).

-type traveltimeplatform_response_routes_location() ::
  [ {'id', binary() }
  | {'properties', list(traveltimeplatform_response_routes_properties:traveltimeplatform_response_routes_properties()) }
  ].


traveltimeplatform_response_routes_location() ->
    traveltimeplatform_response_routes_location([]).

traveltimeplatform_response_routes_location(Fields) ->
  Default = [ {'id', binary() }
            , {'properties', list(traveltimeplatform_response_routes_properties:traveltimeplatform_response_routes_properties()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

