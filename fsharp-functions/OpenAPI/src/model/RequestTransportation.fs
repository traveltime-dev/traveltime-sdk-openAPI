namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module RequestTransportation = 

  //#region RequestTransportation

  [<CLIMutable>]
  type RequestTransportation = {
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
    [<JsonProperty(PropertyName = "disable_border_crossing")>]
    DisableBorderCrossing : bool;
    [<JsonProperty(PropertyName = "pt_change_delay")>]
    PtChangeDelay : int;
    [<JsonProperty(PropertyName = "walking_time")>]
    WalkingTime : int;
    [<JsonProperty(PropertyName = "driving_time_to_station")>]
    DrivingTimeToStation : int;
    [<JsonProperty(PropertyName = "cycling_time_to_station")>]
    CyclingTimeToStation : int;
    [<JsonProperty(PropertyName = "parking_time")>]
    ParkingTime : int;
    [<JsonProperty(PropertyName = "boarding_time")>]
    BoardingTime : int;
  }
  
  //#endregion
  