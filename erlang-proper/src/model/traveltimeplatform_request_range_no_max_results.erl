-module(traveltimeplatform_request_range_no_max_results).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_request_range_no_max_results/0]).

-export_type([traveltimeplatform_request_range_no_max_results/0]).

-type traveltimeplatform_request_range_no_max_results() ::
  [ {'enabled', boolean() }
  | {'width', integer() }
  ].

traveltimeplatform_request_range_no_max_results() ->
  [ {'enabled', boolean() }
  , {'width', integer(1, 43200) }
  ].
