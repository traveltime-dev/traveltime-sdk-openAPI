-module(traveltimeplatform_response_geocoding).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_geocoding/0]).

-export([traveltimeplatform_response_geocoding/1]).

-export_type([traveltimeplatform_response_geocoding/0]).

-type traveltimeplatform_response_geocoding() ::
  [ {'type', binary() }
  | {'features', list(traveltimeplatform_response_geocoding_geo_json_feature:traveltimeplatform_response_geocoding_geo_json_feature()) }
  ].


traveltimeplatform_response_geocoding() ->
    traveltimeplatform_response_geocoding([]).

traveltimeplatform_response_geocoding(Fields) ->
  Default = [ {'type', binary() }
            , {'features', list(traveltimeplatform_response_geocoding_geo_json_feature:traveltimeplatform_response_geocoding_geo_json_feature()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

