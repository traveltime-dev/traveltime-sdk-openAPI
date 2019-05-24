-module(traveltimeplatform_response_time_filter_location).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_time_filter_location/0]).

-export([traveltimeplatform_response_time_filter_location/1]).

-export_type([traveltimeplatform_response_time_filter_location/0]).

-type traveltimeplatform_response_time_filter_location() ::
  [ {'id', binary() }
  | {'properties', list(traveltimeplatform_response_time_filter_properties:traveltimeplatform_response_time_filter_properties()) }
  ].


traveltimeplatform_response_time_filter_location() ->
    traveltimeplatform_response_time_filter_location([]).

traveltimeplatform_response_time_filter_location(Fields) ->
  Default = [ {'id', binary() }
            , {'properties', list(traveltimeplatform_response_time_filter_properties:traveltimeplatform_response_time_filter_properties()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

