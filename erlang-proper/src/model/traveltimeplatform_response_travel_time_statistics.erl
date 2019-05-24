-module(traveltimeplatform_response_travel_time_statistics).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_travel_time_statistics/0]).

-export([traveltimeplatform_response_travel_time_statistics/1]).

-export_type([traveltimeplatform_response_travel_time_statistics/0]).

-type traveltimeplatform_response_travel_time_statistics() ::
  [ {'min', integer() }
  | {'max', integer() }
  | {'mean', integer() }
  | {'median', integer() }
  ].


traveltimeplatform_response_travel_time_statistics() ->
    traveltimeplatform_response_travel_time_statistics([]).

traveltimeplatform_response_travel_time_statistics(Fields) ->
  Default = [ {'min', integer() }
            , {'max', integer() }
            , {'mean', integer() }
            , {'median', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

