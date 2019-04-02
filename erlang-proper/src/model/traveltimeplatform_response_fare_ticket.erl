-module(traveltimeplatform_response_fare_ticket).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_fare_ticket/0]).

-export_type([traveltimeplatform_response_fare_ticket/0]).

-type traveltimeplatform_response_fare_ticket() ::
  [ {'type', binary() }
  | {'price', float() }
  | {'currency', binary() }
  ].

traveltimeplatform_response_fare_ticket() ->
  [ {'type', elements([<<"single">>, <<"week">>, <<"month">>, <<"year">>]) }
  , {'price', float() }
  , {'currency', binary() }
  ].
