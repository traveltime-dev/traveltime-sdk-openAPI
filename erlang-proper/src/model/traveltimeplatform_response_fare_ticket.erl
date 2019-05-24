-module(traveltimeplatform_response_fare_ticket).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_fare_ticket/0]).

-export([traveltimeplatform_response_fare_ticket/1]).

-export_type([traveltimeplatform_response_fare_ticket/0]).

-type traveltimeplatform_response_fare_ticket() ::
  [ {'type', binary() }
  | {'price', float() }
  | {'currency', binary() }
  ].


traveltimeplatform_response_fare_ticket() ->
    traveltimeplatform_response_fare_ticket([]).

traveltimeplatform_response_fare_ticket(Fields) ->
  Default = [ {'type', elements([<<"single">>, <<"week">>, <<"month">>, <<"year">>]) }
            , {'price', float() }
            , {'currency', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

