-module(traveltimeplatform_request_time_filter_fast_arrival_searches).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_fast_arrival_searches/0]).

-export([traveltimeplatform_request_time_filter_fast_arrival_searches/1]).

-export_type([traveltimeplatform_request_time_filter_fast_arrival_searches/0]).

-type traveltimeplatform_request_time_filter_fast_arrival_searches() ::
  [ {'many_to_one', list(traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search:traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search()) }
  | {'one_to_many', list(traveltimeplatform_request_time_filter_fast_arrival_one_to_many_search:traveltimeplatform_request_time_filter_fast_arrival_one_to_many_search()) }
  ].


traveltimeplatform_request_time_filter_fast_arrival_searches() ->
    traveltimeplatform_request_time_filter_fast_arrival_searches([]).

traveltimeplatform_request_time_filter_fast_arrival_searches(Fields) ->
  Default = [ {'many_to_one', list(traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search:traveltimeplatform_request_time_filter_fast_arrival_many_to_one_search()) }
            , {'one_to_many', list(traveltimeplatform_request_time_filter_fast_arrival_one_to_many_search:traveltimeplatform_request_time_filter_fast_arrival_one_to_many_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

