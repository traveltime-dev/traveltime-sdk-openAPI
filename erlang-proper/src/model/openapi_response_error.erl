-module(openapi_response_error).

-include("openapi.hrl").

-export([openapi_response_error/0]).

-export([openapi_response_error/1]).

-export_type([openapi_response_error/0]).

-type openapi_response_error() ::
  [ {'http_status', integer() }
  | {'error_code', integer() }
  | {'description', binary() }
  | {'documentation_link', binary() }
  | {'additional_info', map() }
  ].


openapi_response_error() ->
    openapi_response_error([]).

openapi_response_error(Fields) ->
  Default = [ {'http_status', integer() }
            , {'error_code', integer() }
            , {'description', binary() }
            , {'documentation_link', binary() }
            , {'additional_info', map() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

