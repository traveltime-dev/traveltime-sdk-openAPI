namespace OpenAPI.Model

open System
open System.Collections.Generic

module RequestTransportation = 

  //#region RequestTransportation

  //#region enums
  type TypeEnum = CyclingEnum of string  |  DrivingEnum of string  |  DrivingtrainEnum of string  |  PublicTransportEnum of string  |  WalkingEnum of string  |  CoachEnum of string  |  BusEnum of string  |  TrainEnum of string  |  FerryEnum of string  |  DrivingferryEnum of string  |  CyclingferryEnum of string  
  //#endregion

  type RequestTransportation = {
    Type : TypeEnum;
    DisableBorderCrossing : bool;
    PtChangeDelay : int;
    WalkingTime : int;
    DrivingTimeToStation : int;
    CyclingTimeToStation : int;
    ParkingTime : int;
    BoardingTime : int;
  }
  //#endregion
  