-module(traveltimeplatform_response_box).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_box/0]).

-export_type([traveltimeplatform_response_box/0]).

-type traveltimeplatform_response_box() ::
  [ {'min_lat', float() }
  | {'max_lat', float() }
  | {'min_lng', float() }
  | {'max_lng', float() }
  ].

traveltimeplatform_response_box() ->
  [ {'min_lat', float() }
  , {'max_lat', float() }
  , {'min_lng', float() }
  , {'max_lng', float() }
  ].
