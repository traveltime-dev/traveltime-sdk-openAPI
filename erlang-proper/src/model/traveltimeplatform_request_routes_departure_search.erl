-module(traveltimeplatform_request_routes_departure_search).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_routes_departure_search/0]).

-export([traveltimeplatform_request_routes_departure_search/1]).

-export_type([traveltimeplatform_request_routes_departure_search/0]).

-type traveltimeplatform_request_routes_departure_search() ::
  [ {'id', binary() }
  | {'departure_location_id', binary() }
  | {'arrival_location_ids', list(binary()) }
  | {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
  | {'departure_time', datetime() }
  | {'properties', list(traveltimeplatform_request_routes_property:traveltimeplatform_request_routes_property()) }
  | {'range', traveltimeplatform_request_range_full:traveltimeplatform_request_range_full() }
  ].


traveltimeplatform_request_routes_departure_search() ->
    traveltimeplatform_request_routes_departure_search([]).

traveltimeplatform_request_routes_departure_search(Fields) ->
  Default = [ {'id', binary() }
            , {'departure_location_id', binary() }
            , {'arrival_location_ids', list(binary(), 1, 2) }
            , {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
            , {'departure_time', datetime() }
            , {'properties', list(traveltimeplatform_request_routes_property:traveltimeplatform_request_routes_property()) }
            , {'range', traveltimeplatform_request_range_full:traveltimeplatform_request_range_full() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

