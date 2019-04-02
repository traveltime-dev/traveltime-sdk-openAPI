{-
   TravelTime Platform API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI spec version: 1.0.0
   Contact: support@igeolise.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.ResponseRoutePart exposing (ResponseRoutePart, Type(..), decoder, encoder)

import Data.ResponseTransportationMode as ResponseTransportationMode exposing (ResponseTransportationMode)
import Data.Coords as Coords exposing (Coords)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias ResponseRoutePart =
    { id : String
    , type_ : Type
    , mode : ResponseTransportationMode
    , directions : String
    , distance : Int
    , travelTime : Int
    , coords : (List Coords)
    , direction : Maybe (String)
    , road : Maybe (String)
    , turn : Maybe (String)
    , line : Maybe (String)
    , departureStation : Maybe (String)
    , arrivalStation : Maybe (String)
    , departsAt : Maybe (String)
    , arrivesAt : Maybe (String)
    , numStops : Maybe (Int)
    }


type Type
    = Basic
    | StartEnd
    | Road
    | PublicTransport



decoder : Decoder ResponseRoutePart
decoder =
    Decode.succeed ResponseRoutePart
        |> required "id" Decode.string
        |> required "type" typeDecoder
        |> required "mode" ResponseTransportationMode.decoder
        |> required "directions" Decode.string
        |> required "distance" Decode.int
        |> required "travel_time" Decode.int
        |> required "coords" (Decode.list Coords.decoder)
        |> optional "direction" (Decode.nullable Decode.string) Nothing
        |> optional "road" (Decode.nullable Decode.string) Nothing
        |> optional "turn" (Decode.nullable Decode.string) Nothing
        |> optional "line" (Decode.nullable Decode.string) Nothing
        |> optional "departure_station" (Decode.nullable Decode.string) Nothing
        |> optional "arrival_station" (Decode.nullable Decode.string) Nothing
        |> optional "departs_at" (Decode.nullable Decode.string) Nothing
        |> optional "arrives_at" (Decode.nullable Decode.string) Nothing
        |> optional "num_stops" (Decode.nullable Decode.int) Nothing



encoder : ResponseRoutePart -> Encode.Value
encoder model =
    Encode.object
        [ ( "id", Encode.string model.id )
        , ( "type", typeEncoder model.type_ )
        , ( "mode", ResponseTransportationMode.encoder model.mode )
        , ( "directions", Encode.string model.directions )
        , ( "distance", Encode.int model.distance )
        , ( "travel_time", Encode.int model.travelTime )
        , ( "coords", (Encode.list Coords.encoder) model.coords )
        , ( "direction", Maybe.withDefault Encode.null (Maybe.map Encode.string model.direction) )
        , ( "road", Maybe.withDefault Encode.null (Maybe.map Encode.string model.road) )
        , ( "turn", Maybe.withDefault Encode.null (Maybe.map Encode.string model.turn) )
        , ( "line", Maybe.withDefault Encode.null (Maybe.map Encode.string model.line) )
        , ( "departure_station", Maybe.withDefault Encode.null (Maybe.map Encode.string model.departureStation) )
        , ( "arrival_station", Maybe.withDefault Encode.null (Maybe.map Encode.string model.arrivalStation) )
        , ( "departs_at", Maybe.withDefault Encode.null (Maybe.map Encode.string model.departsAt) )
        , ( "arrives_at", Maybe.withDefault Encode.null (Maybe.map Encode.string model.arrivesAt) )
        , ( "num_stops", Maybe.withDefault Encode.null (Maybe.map Encode.int model.numStops) )

        ]



typeDecoder : Decoder Type
typeDecoder =
    Decode.string
        |> Decode.andThen
            (\str ->
                case str of
                    "basic" ->
                        Decode.succeed Basic

                    "start_end" ->
                        Decode.succeed StartEnd

                    "road" ->
                        Decode.succeed Road

                    "public_transport" ->
                        Decode.succeed PublicTransport

                    other ->
                        Decode.fail <| "Unknown type: " ++ other
            )



typeEncoder : Type -> Encode.Value
typeEncoder model =
    case model of
        Basic ->
            Encode.string "basic"

        StartEnd ->
            Encode.string "start_end"

        Road ->
            Encode.string "road"

        PublicTransport ->
            Encode.string "public_transport"


