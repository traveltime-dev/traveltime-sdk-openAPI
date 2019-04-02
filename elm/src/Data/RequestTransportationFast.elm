{-
   TravelTime Platform API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI spec version: 1.0.0
   Contact: support@igeolise.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.RequestTransportationFast exposing (RequestTransportationFast, Type(..), decoder, encoder)

import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias RequestTransportationFast =
    { type_ : Type
    }


type Type
    = PublicTransport
    | Driving
    | Driving+publicTransport



decoder : Decoder RequestTransportationFast
decoder =
    Decode.succeed RequestTransportationFast
        |> required "type" typeDecoder



encoder : RequestTransportationFast -> Encode.Value
encoder model =
    Encode.object
        [ ( "type", typeEncoder model.type_ )

        ]



typeDecoder : Decoder Type
typeDecoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    "public_transport" ->
                        Decode.succeed PublicTransport

                    "driving" ->
                        Decode.succeed Driving

                    "driving+public_transport" ->
                        Decode.succeed Driving+publicTransport

                    other ->
                        Decode.fail <| "Unknown type: " ++ other
            )



typeEncoder : Type -> Encode.Value
typeEncoder model =
    case model of
        PublicTransport ->
            Encode.string "public_transport"

        Driving ->
            Encode.string "driving"

        Driving+publicTransport ->
            Encode.string "driving+public_transport"


