-module(traveltimeplatform_request_time_filter_fast).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_fast/0]).

-export([traveltimeplatform_request_time_filter_fast/1]).

-export_type([traveltimeplatform_request_time_filter_fast/0]).

-type traveltimeplatform_request_time_filter_fast() ::
  [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location()) }
  | {'arrival_searches', traveltimeplatform_request_time_filter_fast_arrival_searches:traveltimeplatform_request_time_filter_fast_arrival_searches() }
  ].


traveltimeplatform_request_time_filter_fast() ->
    traveltimeplatform_request_time_filter_fast([]).

traveltimeplatform_request_time_filter_fast(Fields) ->
  Default = [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location(), 1) }
            , {'arrival_searches', traveltimeplatform_request_time_filter_fast_arrival_searches:traveltimeplatform_request_time_filter_fast_arrival_searches() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

