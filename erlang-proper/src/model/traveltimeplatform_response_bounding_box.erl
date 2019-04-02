-module(traveltimeplatform_response_bounding_box).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_bounding_box/0]).

-export_type([traveltimeplatform_response_bounding_box/0]).

-type traveltimeplatform_response_bounding_box() ::
  [ {'envelope', traveltimeplatform_response_box:traveltimeplatform_response_box() }
  | {'boxes', list(traveltimeplatform_response_box:traveltimeplatform_response_box()) }
  ].

traveltimeplatform_response_bounding_box() ->
  [ {'envelope', traveltimeplatform_response_box:traveltimeplatform_response_box() }
  , {'boxes', list(traveltimeplatform_response_box:traveltimeplatform_response_box()) }
  ].
