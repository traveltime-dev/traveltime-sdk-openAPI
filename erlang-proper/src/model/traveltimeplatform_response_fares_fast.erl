-module(traveltimeplatform_response_fares_fast).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_fares_fast/0]).

-export([traveltimeplatform_response_fares_fast/1]).

-export_type([traveltimeplatform_response_fares_fast/0]).

-type traveltimeplatform_response_fares_fast() ::
  [ {'tickets_total', list(traveltimeplatform_response_fare_ticket:traveltimeplatform_response_fare_ticket()) }
  ].


traveltimeplatform_response_fares_fast() ->
    traveltimeplatform_response_fares_fast([]).

traveltimeplatform_response_fares_fast(Fields) ->
  Default = [ {'tickets_total', list(traveltimeplatform_response_fare_ticket:traveltimeplatform_response_fare_ticket()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

