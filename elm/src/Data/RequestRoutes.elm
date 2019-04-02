{-
   TravelTime Platform API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI spec version: 1.0.0
   Contact: support@igeolise.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.RequestRoutes exposing (RequestRoutes, decoder, encoder)

import Data.RequestLocation as RequestLocation exposing (RequestLocation)
import Data.RequestRoutesDepartureSearch as RequestRoutesDepartureSearch exposing (RequestRoutesDepartureSearch)
import Data.RequestRoutesArrivalSearch as RequestRoutesArrivalSearch exposing (RequestRoutesArrivalSearch)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias RequestRoutes =
    { locations : (List RequestLocation)
    , departureSearches : Maybe ((List RequestRoutesDepartureSearch))
    , arrivalSearches : Maybe ((List RequestRoutesArrivalSearch))
    }


decoder : Decoder RequestRoutes
decoder =
    Decode.succeed RequestRoutes
        |> required "locations" (Decode.list RequestLocation.decoder)
        |> optional "departure_searches" (Decode.nullable (Decode.list RequestRoutesDepartureSearch.decoder)) Nothing
        |> optional "arrival_searches" (Decode.nullable (Decode.list RequestRoutesArrivalSearch.decoder)) Nothing



encoder : RequestRoutes -> Encode.Value
encoder model =
    Encode.object
        [ ( "locations", (Encode.list RequestLocation.encoder) model.locations )
        , ( "departure_searches", Maybe.withDefault Encode.null (Maybe.map (Encode.list RequestRoutesDepartureSearch.encoder) model.departureSearches) )
        , ( "arrival_searches", Maybe.withDefault Encode.null (Maybe.map (Encode.list RequestRoutesArrivalSearch.encoder) model.arrivalSearches) )

        ]

