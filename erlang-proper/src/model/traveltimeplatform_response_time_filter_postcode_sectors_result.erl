-module(traveltimeplatform_response_time_filter_postcode_sectors_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_sectors_result/0]).

-export([traveltimeplatform_response_time_filter_postcode_sectors_result/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_sectors_result/0]).

-type traveltimeplatform_response_time_filter_postcode_sectors_result() ::
  [ {'search_id', binary() }
  | {'sectors', list(traveltimeplatform_response_time_filter_postcode_sector:traveltimeplatform_response_time_filter_postcode_sector()) }
  ].


traveltimeplatform_response_time_filter_postcode_sectors_result() ->
    traveltimeplatform_response_time_filter_postcode_sectors_result([]).

traveltimeplatform_response_time_filter_postcode_sectors_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'sectors', list(traveltimeplatform_response_time_filter_postcode_sector:traveltimeplatform_response_time_filter_postcode_sector()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

