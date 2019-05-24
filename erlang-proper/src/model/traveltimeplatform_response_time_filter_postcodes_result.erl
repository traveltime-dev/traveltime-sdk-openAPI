-module(traveltimeplatform_response_time_filter_postcodes_result).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcodes_result/0]).

-export([traveltimeplatform_response_time_filter_postcodes_result/1]).

-export_type([traveltimeplatform_response_time_filter_postcodes_result/0]).

-type traveltimeplatform_response_time_filter_postcodes_result() ::
  [ {'search_id', binary() }
  | {'postcodes', list(traveltimeplatform_response_time_filter_postcode:traveltimeplatform_response_time_filter_postcode()) }
  ].


traveltimeplatform_response_time_filter_postcodes_result() ->
    traveltimeplatform_response_time_filter_postcodes_result([]).

traveltimeplatform_response_time_filter_postcodes_result(Fields) ->
  Default = [ {'search_id', binary() }
            , {'postcodes', list(traveltimeplatform_response_time_filter_postcode:traveltimeplatform_response_time_filter_postcode()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

