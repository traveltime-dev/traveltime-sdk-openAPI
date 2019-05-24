namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.Coords
open traveltimeplatform.Model.ResponseTransportationMode

module ResponseRoutePart = 

  //#region ResponseRoutePart

  //#region enums
  type TypeEnum = BasicEnum of string  |  StartEndEnum of string  |  RoadEnum of string  |  PublicTransportEnum of string  
  //#endregion

  type ResponseRoutePart = {
    Id : string;
    Type : TypeEnum;
    Mode : ResponseTransportationMode;
    Directions : string;
    Distance : int;
    TravelTime : int;
    Coords : Coords[];
    Direction : string;
    Road : string;
    Turn : string;
    Line : string;
    DepartureStation : string;
    ArrivalStation : string;
    DepartsAt : string;
    ArrivesAt : string;
    NumStops : int;
  }
  //#endregion
  