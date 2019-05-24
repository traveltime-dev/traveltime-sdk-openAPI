-module(traveltimeplatform_response_time_filter_postcodes).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_postcodes/0]).

-export([traveltimeplatform_response_time_filter_postcodes/1]).

-export_type([traveltimeplatform_response_time_filter_postcodes/0]).

-type traveltimeplatform_response_time_filter_postcodes() ::
  [ {'results', list(traveltimeplatform_response_time_filter_postcodes_result:traveltimeplatform_response_time_filter_postcodes_result()) }
  ].


traveltimeplatform_response_time_filter_postcodes() ->
    traveltimeplatform_response_time_filter_postcodes([]).

traveltimeplatform_response_time_filter_postcodes(Fields) ->
  Default = [ {'results', list(traveltimeplatform_response_time_filter_postcodes_result:traveltimeplatform_response_time_filter_postcodes_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

