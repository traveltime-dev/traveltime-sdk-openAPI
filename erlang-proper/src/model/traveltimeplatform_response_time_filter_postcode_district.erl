-module(traveltimeplatform_response_time_filter_postcode_district).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_district/0]).

-export([traveltimeplatform_response_time_filter_postcode_district/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_district/0]).

-type traveltimeplatform_response_time_filter_postcode_district() ::
  [ {'code', traveltimeplatform_string:traveltimeplatform_string() }
  | {'properties', traveltimeplatform_response_time_filter_postcode_district_properties:traveltimeplatform_response_time_filter_postcode_district_properties() }
  ].


traveltimeplatform_response_time_filter_postcode_district() ->
    traveltimeplatform_response_time_filter_postcode_district([]).

traveltimeplatform_response_time_filter_postcode_district(Fields) ->
  Default = [ {'code', traveltimeplatform_string:traveltimeplatform_string() }
            , {'properties', traveltimeplatform_response_time_filter_postcode_district_properties:traveltimeplatform_response_time_filter_postcode_district_properties() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

