-module(traveltimeplatform_response_fares).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_fares/0]).

-export_type([traveltimeplatform_response_fares/0]).

-type traveltimeplatform_response_fares() ::
  [ {'breakdown', list(traveltimeplatform_response_fares_breakdown_item:traveltimeplatform_response_fares_breakdown_item()) }
  | {'tickets_total', list(traveltimeplatform_response_fare_ticket:traveltimeplatform_response_fare_ticket()) }
  ].

traveltimeplatform_response_fares() ->
  [ {'breakdown', list(traveltimeplatform_response_fares_breakdown_item:traveltimeplatform_response_fares_breakdown_item()) }
  , {'tickets_total', list(traveltimeplatform_response_fare_ticket:traveltimeplatform_response_fare_ticket()) }
  ].
