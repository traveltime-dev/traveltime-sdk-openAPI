{-
   TravelTime Platform API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI spec version: 1.0.0
   Contact: support@igeolise.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.ResponseTimeFilterPostcodesProperties exposing (ResponseTimeFilterPostcodesProperties, decoder, encoder)

import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias ResponseTimeFilterPostcodesProperties =
    { travelTime : Maybe (Int)
    , distance : Maybe (Int)
    }


decoder : Decoder ResponseTimeFilterPostcodesProperties
decoder =
    Decode.succeed ResponseTimeFilterPostcodesProperties
        |> optional "travel_time" (Decode.nullable Decode.int) Nothing
        |> optional "distance" (Decode.nullable Decode.int) Nothing



encoder : ResponseTimeFilterPostcodesProperties -> Encode.Value
encoder model =
    Encode.object
        [ ( "travel_time", Maybe.withDefault Encode.null (Maybe.map Encode.int model.travelTime) )
        , ( "distance", Maybe.withDefault Encode.null (Maybe.map Encode.int model.distance) )

        ]

