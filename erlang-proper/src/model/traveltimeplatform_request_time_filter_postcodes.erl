-module(traveltimeplatform_request_time_filter_postcodes).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_postcodes/0]).

-export([traveltimeplatform_request_time_filter_postcodes/1]).

-export_type([traveltimeplatform_request_time_filter_postcodes/0]).

-type traveltimeplatform_request_time_filter_postcodes() ::
  [ {'departure_searches', list(traveltimeplatform_request_time_filter_postcodes_departure_search:traveltimeplatform_request_time_filter_postcodes_departure_search()) }
  | {'arrival_searches', list(traveltimeplatform_request_time_filter_postcodes_arrival_search:traveltimeplatform_request_time_filter_postcodes_arrival_search()) }
  ].


traveltimeplatform_request_time_filter_postcodes() ->
    traveltimeplatform_request_time_filter_postcodes([]).

traveltimeplatform_request_time_filter_postcodes(Fields) ->
  Default = [ {'departure_searches', list(traveltimeplatform_request_time_filter_postcodes_departure_search:traveltimeplatform_request_time_filter_postcodes_departure_search()) }
            , {'arrival_searches', list(traveltimeplatform_request_time_filter_postcodes_arrival_search:traveltimeplatform_request_time_filter_postcodes_arrival_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

