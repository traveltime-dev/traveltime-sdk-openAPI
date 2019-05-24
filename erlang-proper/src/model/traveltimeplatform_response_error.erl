-module(traveltimeplatform_response_error).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_error/0]).

-export([traveltimeplatform_response_error/1]).

-export_type([traveltimeplatform_response_error/0]).

-type traveltimeplatform_response_error() ::
  [ {'http_status', integer() }
  | {'error_code', integer() }
  | {'description', binary() }
  | {'documentation_link', binary() }
  | {'additional_info', map() }
  ].


traveltimeplatform_response_error() ->
    traveltimeplatform_response_error([]).

traveltimeplatform_response_error(Fields) ->
  Default = [ {'http_status', integer() }
            , {'error_code', integer() }
            , {'description', binary() }
            , {'documentation_link', binary() }
            , {'additional_info', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

