-module(traveltimeplatform_request_supported_locations).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_supported_locations/0]).

-export([traveltimeplatform_request_supported_locations/1]).

-export_type([traveltimeplatform_request_supported_locations/0]).

-type traveltimeplatform_request_supported_locations() ::
  [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location()) }
  ].


traveltimeplatform_request_supported_locations() ->
    traveltimeplatform_request_supported_locations([]).

traveltimeplatform_request_supported_locations(Fields) ->
  Default = [ {'locations', list(traveltimeplatform_request_location:traveltimeplatform_request_location(), 1) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

