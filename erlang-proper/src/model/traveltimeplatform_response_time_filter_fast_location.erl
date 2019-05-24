-module(traveltimeplatform_response_time_filter_fast_location).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_fast_location/0]).

-export([traveltimeplatform_response_time_filter_fast_location/1]).

-export_type([traveltimeplatform_response_time_filter_fast_location/0]).

-type traveltimeplatform_response_time_filter_fast_location() ::
  [ {'id', binary() }
  | {'properties', list(traveltimeplatform_response_time_filter_fast_properties:traveltimeplatform_response_time_filter_fast_properties()) }
  ].


traveltimeplatform_response_time_filter_fast_location() ->
    traveltimeplatform_response_time_filter_fast_location([]).

traveltimeplatform_response_time_filter_fast_location(Fields) ->
  Default = [ {'id', binary() }
            , {'properties', list(traveltimeplatform_response_time_filter_fast_properties:traveltimeplatform_response_time_filter_fast_properties()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

