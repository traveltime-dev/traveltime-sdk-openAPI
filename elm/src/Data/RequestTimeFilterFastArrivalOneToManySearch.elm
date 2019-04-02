{-
   TravelTime Platform API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI spec version: 1.0.0
   Contact: support@igeolise.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.RequestTimeFilterFastArrivalOneToManySearch exposing (RequestTimeFilterFastArrivalOneToManySearch, decoder, encoder)

import Data.RequestTransportationFast as RequestTransportationFast exposing (RequestTransportationFast)
import Data.RequestArrivalTimePeriod as RequestArrivalTimePeriod exposing (RequestArrivalTimePeriod)
import Data.RequestTimeFilterFastProperty as RequestTimeFilterFastProperty exposing (RequestTimeFilterFastProperty)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias RequestTimeFilterFastArrivalOneToManySearch =
    { id : String
    , departureLocationId : String
    , arrivalLocationIds : (List String)
    , transportation : RequestTransportationFast
    , travelTime : Int
    , arrivalTimePeriod : RequestArrivalTimePeriod
    , properties : (List RequestTimeFilterFastProperty)
    }


decoder : Decoder RequestTimeFilterFastArrivalOneToManySearch
decoder =
    Decode.succeed RequestTimeFilterFastArrivalOneToManySearch
        |> required "id" Decode.string
        |> required "departure_location_id" Decode.string
        |> required "arrival_location_ids" (Decode.list Decode.string)
        |> required "transportation" RequestTransportationFast.decoder
        |> required "travel_time" Decode.int
        |> required "arrival_time_period" RequestArrivalTimePeriod.decoder
        |> required "properties" (Decode.list RequestTimeFilterFastProperty.decoder)



encoder : RequestTimeFilterFastArrivalOneToManySearch -> Encode.Value
encoder model =
    Encode.object
        [ ( "id", Encode.string model.id )
        , ( "departure_location_id", Encode.string model.departureLocationId )
        , ( "arrival_location_ids", (Encode.list Encode.string) model.arrivalLocationIds )
        , ( "transportation", RequestTransportationFast.encoder model.transportation )
        , ( "travel_time", Encode.int model.travelTime )
        , ( "arrival_time_period", RequestArrivalTimePeriod.encoder model.arrivalTimePeriod )
        , ( "properties", (Encode.list RequestTimeFilterFastProperty.encoder) model.properties )

        ]

