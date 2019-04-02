-module(traveltimeplatform_response_map_info_features).

-export([encode/1]).

-export_type([traveltimeplatform_response_map_info_features/0]).

-type traveltimeplatform_response_map_info_features() ::
    #{ 'public_transport' => traveltimeplatform_response_map_info_features_public_transport:traveltimeplatform_response_map_info_features_public_transport(),
       'fares' := boolean(),
       'postcodes' := boolean()
     }.

encode(#{ 'public_transport' := PublicTransport,
          'fares' := Fares,
          'postcodes' := Postcodes
        }) ->
    #{ 'public_transport' => PublicTransport,
       'fares' => Fares,
       'postcodes' => Postcodes
     }.
