-module(openapi_response_travel_time_statistics).

-include("openapi.hrl").

-export([openapi_response_travel_time_statistics/0]).

-export([openapi_response_travel_time_statistics/1]).

-export_type([openapi_response_travel_time_statistics/0]).

-type openapi_response_travel_time_statistics() ::
  [ {'min', integer() }
  | {'max', integer() }
  | {'mean', integer() }
  | {'median', integer() }
  ].


openapi_response_travel_time_statistics() ->
    openapi_response_travel_time_statistics([]).

openapi_response_travel_time_statistics(Fields) ->
  Default = [ {'min', integer() }
            , {'max', integer() }
            , {'mean', integer() }
            , {'median', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

