namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Coords
open OpenAPI.Model.ResponseTransportationMode

module ResponseRoutePart = 

  //#region ResponseRoutePart

  [<CLIMutable>]
  type ResponseRoutePart = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
    [<JsonProperty(PropertyName = "mode")>]
    Mode : ResponseTransportationMode;
    [<JsonProperty(PropertyName = "directions")>]
    Directions : string;
    [<JsonProperty(PropertyName = "distance")>]
    Distance : int;
    [<JsonProperty(PropertyName = "travel_time")>]
    TravelTime : int;
    [<JsonProperty(PropertyName = "coords")>]
    Coords : Coords[];
    [<JsonProperty(PropertyName = "direction")>]
    Direction : string;
    [<JsonProperty(PropertyName = "road")>]
    Road : string;
    [<JsonProperty(PropertyName = "turn")>]
    Turn : string;
    [<JsonProperty(PropertyName = "line")>]
    Line : string;
    [<JsonProperty(PropertyName = "departure_station")>]
    DepartureStation : string;
    [<JsonProperty(PropertyName = "arrival_station")>]
    ArrivalStation : string;
    [<JsonProperty(PropertyName = "departs_at")>]
    DepartsAt : string;
    [<JsonProperty(PropertyName = "arrives_at")>]
    ArrivesAt : string;
    [<JsonProperty(PropertyName = "num_stops")>]
    NumStops : int;
  }
  
  //#endregion
  