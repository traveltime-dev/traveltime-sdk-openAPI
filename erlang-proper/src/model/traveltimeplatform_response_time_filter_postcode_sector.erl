-module(traveltimeplatform_response_time_filter_postcode_sector).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_sector/0]).

-export([traveltimeplatform_response_time_filter_postcode_sector/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_sector/0]).

-type traveltimeplatform_response_time_filter_postcode_sector() ::
  [ {'code', traveltimeplatform_string:traveltimeplatform_string() }
  | {'properties', traveltimeplatform_response_time_filter_postcode_sector_properties:traveltimeplatform_response_time_filter_postcode_sector_properties() }
  ].


traveltimeplatform_response_time_filter_postcode_sector() ->
    traveltimeplatform_response_time_filter_postcode_sector([]).

traveltimeplatform_response_time_filter_postcode_sector(Fields) ->
  Default = [ {'code', traveltimeplatform_string:traveltimeplatform_string() }
            , {'properties', traveltimeplatform_response_time_filter_postcode_sector_properties:traveltimeplatform_response_time_filter_postcode_sector_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

