-module(openapi_request_transportation).

-include("openapi.hrl").

-export([openapi_request_transportation/0]).

-export([openapi_request_transportation/1]).

-export_type([openapi_request_transportation/0]).

-type openapi_request_transportation() ::
  [ {'type', binary() }
  | {'disable_border_crossing', boolean() }
  | {'pt_change_delay', integer() }
  | {'walking_time', integer() }
  | {'driving_time_to_station', integer() }
  | {'cycling_time_to_station', integer() }
  | {'parking_time', integer() }
  | {'boarding_time', integer() }
  ].


openapi_request_transportation() ->
    openapi_request_transportation([]).

openapi_request_transportation(Fields) ->
  Default = [ {'type', elements([<<"cycling">>, <<"driving">>, <<"driving+train">>, <<"public_transport">>, <<"walking">>, <<"coach">>, <<"bus">>, <<"train">>, <<"ferry">>, <<"driving+ferry">>, <<"cycling+ferry">>]) }
            , {'disable_border_crossing', boolean() }
            , {'pt_change_delay', integer() }
            , {'walking_time', integer() }
            , {'driving_time_to_station', integer() }
            , {'cycling_time_to_station', integer() }
            , {'parking_time', integer() }
            , {'boarding_time', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

