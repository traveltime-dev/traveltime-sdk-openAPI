-module(openapi_response_time_filter_postcodes_properties).

-include("openapi.hrl").

-export([openapi_response_time_filter_postcodes_properties/0]).

-export([openapi_response_time_filter_postcodes_properties/1]).

-export_type([openapi_response_time_filter_postcodes_properties/0]).

-type openapi_response_time_filter_postcodes_properties() ::
  [ {'travel_time', integer() }
  | {'distance', integer() }
  ].


openapi_response_time_filter_postcodes_properties() ->
    openapi_response_time_filter_postcodes_properties([]).

openapi_response_time_filter_postcodes_properties(Fields) ->
  Default = [ {'travel_time', integer() }
            , {'distance', integer() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

