-module(traveltimeplatform_response_time_filter_postcode_sectors).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcode_sectors/0]).

-export([traveltimeplatform_response_time_filter_postcode_sectors/1]).

-export_type([traveltimeplatform_response_time_filter_postcode_sectors/0]).

-type traveltimeplatform_response_time_filter_postcode_sectors() ::
  [ {'results', list(traveltimeplatform_response_time_filter_postcode_sectors_result:traveltimeplatform_response_time_filter_postcode_sectors_result()) }
  ].


traveltimeplatform_response_time_filter_postcode_sectors() ->
    traveltimeplatform_response_time_filter_postcode_sectors([]).

traveltimeplatform_response_time_filter_postcode_sectors(Fields) ->
  Default = [ {'results', list(traveltimeplatform_response_time_filter_postcode_sectors_result:traveltimeplatform_response_time_filter_postcode_sectors_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

