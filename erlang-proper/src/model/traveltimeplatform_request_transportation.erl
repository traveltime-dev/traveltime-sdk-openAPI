-module(traveltimeplatform_request_transportation).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_transportation/0]).

-export([traveltimeplatform_request_transportation/1]).

-export_type([traveltimeplatform_request_transportation/0]).

-type traveltimeplatform_request_transportation() ::
  [ {'type', binary() }
  | {'pt_change_delay', integer() }
  | {'walking_time', integer() }
  | {'driving_time_to_station', integer() }
  | {'parking_time', integer() }
  | {'boarding_time', integer() }
  ].


traveltimeplatform_request_transportation() ->
    traveltimeplatform_request_transportation([]).

traveltimeplatform_request_transportation(Fields) ->
  Default = [ {'type', elements([<<"cycling">>, <<"driving">>, <<"driving+train">>, <<"public_transport">>, <<"walking">>, <<"coach">>, <<"bus">>, <<"train">>, <<"ferry">>, <<"driving+ferry">>, <<"cycling+ferry">>]) }
            , {'pt_change_delay', integer() }
            , {'walking_time', integer() }
            , {'driving_time_to_station', integer() }
            , {'parking_time', integer() }
            , {'boarding_time', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

