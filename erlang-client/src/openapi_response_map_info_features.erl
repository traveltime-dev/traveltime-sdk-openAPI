-module(openapi_response_map_info_features).

-export([encode/1]).

-export_type([openapi_response_map_info_features/0]).

-type openapi_response_map_info_features() ::
    #{ 'public_transport' => openapi_response_map_info_features_public_transport:openapi_response_map_info_features_public_transport(),
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
