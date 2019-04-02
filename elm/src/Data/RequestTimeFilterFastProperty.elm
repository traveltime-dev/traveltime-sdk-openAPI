{-
   TravelTime Platform API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI spec version: 1.0.0
   Contact: support@igeolise.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.RequestTimeFilterFastProperty exposing (RequestTimeFilterFastProperty(..), decoder, encoder)

import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type RequestTimeFilterFastProperty
    = TravelTime
    | Fares



decoder : Decoder RequestTimeFilterFastProperty
decoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    "travel_time" ->
                        Decode.succeed TravelTime

                    "fares" ->
                        Decode.succeed Fares

                    other ->
                        Decode.fail <| "Unknown type: " ++ other
            )



encoder : RequestTimeFilterFastProperty -> Encode.Value
encoder model =
    case model of
        TravelTime ->
            Encode.string "travel_time"

        Fares ->
            Encode.string "fares"

