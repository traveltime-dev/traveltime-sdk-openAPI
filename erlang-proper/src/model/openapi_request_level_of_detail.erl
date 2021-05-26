-module(openapi_request_level_of_detail).

-include("openapi.hrl").

-export([openapi_request_level_of_detail/0]).

-export([openapi_request_level_of_detail/1]).

-export_type([openapi_request_level_of_detail/0]).

-type openapi_request_level_of_detail() ::
  [ {'scale_type', binary() }
  | {'level', binary() }
  ].


openapi_request_level_of_detail() ->
    openapi_request_level_of_detail([]).

openapi_request_level_of_detail(Fields) ->
  Default = [ {'scale_type', elements([<<"simple">>]) }
            , {'level', elements([<<"lowest">>, <<"low">>, <<"medium">>, <<"high">>, <<"highest">>]) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

