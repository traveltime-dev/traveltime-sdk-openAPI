-module(traveltimeplatform_response_time_filter_postcode_districts_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_districts_result/0]).

-export([traveltimeplatform_response_time_filter_postcode_districts_result/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_districts_result/0]).

-type traveltimeplatform_response_time_filter_postcode_districts_result() ::
  [ {'search_id', binary() }
  | {'districts', list(traveltimeplatform_response_time_filter_postcode_district:traveltimeplatform_response_time_filter_postcode_district()) }
  ].


traveltimeplatform_response_time_filter_postcode_districts_result() ->
    traveltimeplatform_response_time_filter_postcode_districts_result([]).

traveltimeplatform_response_time_filter_postcode_districts_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'districts', list(traveltimeplatform_response_time_filter_postcode_district:traveltimeplatform_response_time_filter_postcode_district()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

