-module(traveltimeplatform_response_geocoding_properties).

-export([encode/1]).

-export_type([traveltimeplatform_response_geocoding_properties/0]).

-type traveltimeplatform_response_geocoding_properties() ::
    #{ 'name' := binary(),
       'label' := binary(),
       'score' => float(),
       'house_number' => binary(),
       'street' => binary(),
       'region' => binary(),
       'region_code' => binary(),
       'neighbourhood' => binary(),
       'county' => binary(),
       'macroregion' => binary(),
       'city' => binary(),
       'country' => binary(),
       'country_code' => binary(),
       'continent' => binary(),
       'postcode' => binary(),
       'features' => traveltimeplatform_response_map_info_features:traveltimeplatform_response_map_info_features()
     }.

encode(#{ 'name' := Name,
          'label' := Label,
          'score' := Score,
          'house_number' := HouseNumber,
          'street' := Street,
          'region' := Region,
          'region_code' := RegionCode,
          'neighbourhood' := Neighbourhood,
          'county' := County,
          'macroregion' := Macroregion,
          'city' := City,
          'country' := Country,
          'country_code' := CountryCode,
          'continent' := Continent,
          'postcode' := Postcode,
          'features' := Features
        }) ->
    #{ 'name' => Name,
       'label' => Label,
       'score' => Score,
       'house_number' => HouseNumber,
       'street' => Street,
       'region' => Region,
       'region_code' => RegionCode,
       'neighbourhood' => Neighbourhood,
       'county' => County,
       'macroregion' => Macroregion,
       'city' => City,
       'country' => Country,
       'country_code' => CountryCode,
       'continent' => Continent,
       'postcode' => Postcode,
       'features' => Features
     }.
