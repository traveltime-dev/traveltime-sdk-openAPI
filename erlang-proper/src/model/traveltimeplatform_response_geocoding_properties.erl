-module(traveltimeplatform_response_geocoding_properties).

-include("traveltimeplatform.hrl").

-export([traveltimeplatform_response_geocoding_properties/0]).

-export([traveltimeplatform_response_geocoding_properties/1]).

-export_type([traveltimeplatform_response_geocoding_properties/0]).

-type traveltimeplatform_response_geocoding_properties() ::
  [ {'name', binary() }
  | {'label', binary() }
  | {'score', float() }
  | {'house_number', binary() }
  | {'street', binary() }
  | {'region', binary() }
  | {'region_code', binary() }
  | {'neighbourhood', binary() }
  | {'county', binary() }
  | {'macroregion', binary() }
  | {'city', binary() }
  | {'country', binary() }
  | {'country_code', binary() }
  | {'continent', binary() }
  | {'postcode', binary() }
  | {'features', traveltimeplatform_response_map_info_features:traveltimeplatform_response_map_info_features() }
  ].


traveltimeplatform_response_geocoding_properties() ->
    traveltimeplatform_response_geocoding_properties([]).

traveltimeplatform_response_geocoding_properties(Fields) ->
  Default = [ {'name', binary() }
            , {'label', binary() }
            , {'score', float() }
            , {'house_number', binary() }
            , {'street', binary() }
            , {'region', binary() }
            , {'region_code', binary() }
            , {'neighbourhood', binary() }
            , {'county', binary() }
            , {'macroregion', binary() }
            , {'city', binary() }
            , {'country', binary() }
            , {'country_code', binary() }
            , {'continent', binary() }
            , {'postcode', binary() }
            , {'features', traveltimeplatform_response_map_info_features:traveltimeplatform_response_map_info_features() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

