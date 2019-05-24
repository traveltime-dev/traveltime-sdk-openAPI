-module(traveltimeplatform_request_time_filter_postcode_districts).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_time_filter_postcode_districts/0]).

-export([traveltimeplatform_request_time_filter_postcode_districts/1]).

-export_type([traveltimeplatform_request_time_filter_postcode_districts/0]).

-type traveltimeplatform_request_time_filter_postcode_districts() ::
  [ {'departure_searches', list(traveltimeplatform_request_time_filter_postcode_districts_departure_search:traveltimeplatform_request_time_filter_postcode_districts_departure_search()) }
  | {'arrival_searches', list(traveltimeplatform_request_time_filter_postcode_districts_arrival_search:traveltimeplatform_request_time_filter_postcode_districts_arrival_search()) }
  ].


traveltimeplatform_request_time_filter_postcode_districts() ->
    traveltimeplatform_request_time_filter_postcode_districts([]).

traveltimeplatform_request_time_filter_postcode_districts(Fields) ->
  Default = [ {'departure_searches', list(traveltimeplatform_request_time_filter_postcode_districts_departure_search:traveltimeplatform_request_time_filter_postcode_districts_departure_search()) }
            , {'arrival_searches', list(traveltimeplatform_request_time_filter_postcode_districts_arrival_search:traveltimeplatform_request_time_filter_postcode_districts_arrival_search()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

