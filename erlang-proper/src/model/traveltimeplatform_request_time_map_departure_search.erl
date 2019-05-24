-module(traveltimeplatform_request_time_map_departure_search).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_map_departure_search/0]).

-export([traveltimeplatform_request_time_map_departure_search/1]).

-export_type([traveltimeplatform_request_time_map_departure_search/0]).

-type traveltimeplatform_request_time_map_departure_search() ::
  [ {'id', binary() }
  | {'coords', traveltimeplatform_coords:traveltimeplatform_coords() }
  | {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
  | {'travel_time', integer() }
  | {'departure_time', datetime() }
  | {'properties', list(traveltimeplatform_request_time_map_property:traveltimeplatform_request_time_map_property()) }
  | {'range', traveltimeplatform_request_range_no_max_results:traveltimeplatform_request_range_no_max_results() }
  ].


traveltimeplatform_request_time_map_departure_search() ->
    traveltimeplatform_request_time_map_departure_search([]).

traveltimeplatform_request_time_map_departure_search(Fields) ->
  Default = [ {'id', binary() }
            , {'coords', traveltimeplatform_coords:traveltimeplatform_coords() }
            , {'transportation', traveltimeplatform_request_transportation:traveltimeplatform_request_transportation() }
            , {'travel_time', integer(60, 14400) }
            , {'departure_time', datetime() }
            , {'properties', list(traveltimeplatform_request_time_map_property:traveltimeplatform_request_time_map_property()) }
            , {'range', traveltimeplatform_request_range_no_max_results:traveltimeplatform_request_range_no_max_results() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

