{-
   TravelTime Platform API
   No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

   OpenAPI spec version: 1.0.0
   Contact: support@igeolise.com

   NOTE: This file is auto generated by the openapi-generator.
   https://github.com/openapitools/openapi-generator.git
   Do not edit this file manually.
-}


module Data.ResponseFaresFast exposing (ResponseFaresFast, decoder, encoder)

import Data.ResponseFareTicket as ResponseFareTicket exposing (ResponseFareTicket)
import Dict exposing (Dict)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (optional, required)
import Json.Encode as Encode


type alias ResponseFaresFast =
    { ticketsTotal : (List ResponseFareTicket)
    }


decoder : Decoder ResponseFaresFast
decoder =
    Decode.succeed ResponseFaresFast
        |> required "tickets_total" (Decode.list ResponseFareTicket.decoder)



encoder : ResponseFaresFast -> Encode.Value
encoder model =
    Encode.object
        [ ( "tickets_total", (Encode.list ResponseFareTicket.encoder) model.ticketsTotal )

        ]

