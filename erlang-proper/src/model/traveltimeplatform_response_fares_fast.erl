-module(traveltimeplatform_response_fares_fast).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_fares_fast/0]).

-export_type([traveltimeplatform_response_fares_fast/0]).

-type traveltimeplatform_response_fares_fast() ::
  [ {'tickets_total', list(traveltimeplatform_response_fare_ticket:traveltimeplatform_response_fare_ticket()) }
  ].

traveltimeplatform_response_fares_fast() ->
  [ {'tickets_total', list(traveltimeplatform_response_fare_ticket:traveltimeplatform_response_fare_ticket()) }
  ].
