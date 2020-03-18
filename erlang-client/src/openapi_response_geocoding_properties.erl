-module(openapi_response_geocoding_properties).

-export([encode/1]).

-export_type([openapi_response_geocoding_properties/0]).

-type openapi_response_geocoding_properties() ::
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
       'features' => openapi_response_map_info_features:openapi_response_map_info_features()
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
