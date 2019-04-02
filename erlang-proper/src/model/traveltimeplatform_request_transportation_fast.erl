-module(traveltimeplatform_request_transportation_fast).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_transportation_fast/0]).

-export_type([traveltimeplatform_request_transportation_fast/0]).

-type traveltimeplatform_request_transportation_fast() ::
  [ {'type', binary() }
  ].

traveltimeplatform_request_transportation_fast() ->
  [ {'type', elements([<<"public_transport">>, <<"driving">>, <<"driving+public_transport">>]) }
  ].
