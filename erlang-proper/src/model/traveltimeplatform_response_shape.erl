-module(traveltimeplatform_response_shape).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_shape/0]).

-export_type([traveltimeplatform_response_shape/0]).

-type traveltimeplatform_response_shape() ::
  [ {'shell', list(traveltimeplatform_coords:traveltimeplatform_coords()) }
  | {'holes', list(list(traveltimeplatform_coords:traveltimeplatform_coords())) }
  ].

traveltimeplatform_response_shape() ->
  [ {'shell', list(traveltimeplatform_coords:traveltimeplatform_coords()) }
  , {'holes', list(list(traveltimeplatform_coords:traveltimeplatform_coords())) }
  ].
