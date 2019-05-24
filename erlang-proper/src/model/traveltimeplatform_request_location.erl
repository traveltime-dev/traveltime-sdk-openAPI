-module(traveltimeplatform_request_location).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_location/0]).

-export([traveltimeplatform_request_location/1]).

-export_type([traveltimeplatform_request_location/0]).

-type traveltimeplatform_request_location() ::
  [ {'id', binary() }
  | {'coords', traveltimeplatform_coords:traveltimeplatform_coords() }
  ].


traveltimeplatform_request_location() ->
    traveltimeplatform_request_location([]).

traveltimeplatform_request_location(Fields) ->
  Default = [ {'id', binary() }
            , {'coords', traveltimeplatform_coords:traveltimeplatform_coords() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

