-module(traveltimeplatform_response_supported_location).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_supported_location/0]).

-export([traveltimeplatform_response_supported_location/1]).

-export_type([traveltimeplatform_response_supported_location/0]).

-type traveltimeplatform_response_supported_location() ::
  [ {'id', binary() }
  | {'map_name', binary() }
  ].


traveltimeplatform_response_supported_location() ->
    traveltimeplatform_response_supported_location([]).

traveltimeplatform_response_supported_location(Fields) ->
  Default = [ {'id', binary() }
            , {'map_name', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

