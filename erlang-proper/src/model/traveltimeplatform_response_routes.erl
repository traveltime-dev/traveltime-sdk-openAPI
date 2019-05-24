-module(traveltimeplatform_response_routes).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_routes/0]).

-export([traveltimeplatform_response_routes/1]).

-export_type([traveltimeplatform_response_routes/0]).

-type traveltimeplatform_response_routes() ::
  [ {'results', list(traveltimeplatform_response_routes_result:traveltimeplatform_response_routes_result()) }
  ].


traveltimeplatform_response_routes() ->
    traveltimeplatform_response_routes([]).

traveltimeplatform_response_routes(Fields) ->
  Default = [ {'results', list(traveltimeplatform_response_routes_result:traveltimeplatform_response_routes_result()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

