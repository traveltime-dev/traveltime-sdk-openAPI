-module(traveltimeplatform_request_transportation_fast).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_transportation_fast/0]).

-export([traveltimeplatform_request_transportation_fast/1]).

-export_type([traveltimeplatform_request_transportation_fast/0]).

-type traveltimeplatform_request_transportation_fast() ::
  [ {'type', binary() }
  ].


traveltimeplatform_request_transportation_fast() ->
    traveltimeplatform_request_transportation_fast([]).

traveltimeplatform_request_transportation_fast(Fields) ->
  Default = [ {'type', elements([<<"public_transport">>, <<"driving">>, <<"driving+public_transport">>]) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

