-module(traveltimeplatform_response_error).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_error/0]).

-export_type([traveltimeplatform_response_error/0]).

-type traveltimeplatform_response_error() ::
  [ {'http_status', integer() }
  | {'error_code', integer() }
  | {'description', binary() }
  | {'documentation_link', binary() }
  | {'additional_info', map() }
  ].

traveltimeplatform_response_error() ->
  [ {'http_status', integer() }
  , {'error_code', integer() }
  , {'description', binary() }
  , {'documentation_link', binary() }
  , {'additional_info', map() }
  ].
