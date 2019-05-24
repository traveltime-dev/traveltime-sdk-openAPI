-module(traveltimeplatform_response_time_filter_postcode_sector_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_sector_properties/0]).

-export([traveltimeplatform_response_time_filter_postcode_sector_properties/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_sector_properties/0]).

-type traveltimeplatform_response_time_filter_postcode_sector_properties() ::
  [ {'travel_time_reachable', traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics() }
  | {'travel_time_all', traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics() }
  | {'coverage', float() }
  ].


traveltimeplatform_response_time_filter_postcode_sector_properties() ->
    traveltimeplatform_response_time_filter_postcode_sector_properties([]).

traveltimeplatform_response_time_filter_postcode_sector_properties(Fields) ->
  Default = [ {'travel_time_reachable', traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics() }
            , {'travel_time_all', traveltimeplatform_response_travel_time_statistics:traveltimeplatform_response_travel_time_statistics() }
            , {'coverage', float() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

