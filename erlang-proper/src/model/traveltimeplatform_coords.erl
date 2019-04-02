-module(traveltimeplatform_coords).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_coords/0]).

-export_type([traveltimeplatform_coords/0]).

-type traveltimeplatform_coords() ::
  [ {'lat', float() }
  | {'lng', float() }
  ].

traveltimeplatform_coords() ->
  [ {'lat', float() }
  , {'lng', float() }
  ].
