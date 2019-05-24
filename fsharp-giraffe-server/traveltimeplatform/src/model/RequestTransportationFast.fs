namespace traveltimeplatform.Model

open System
open System.Collections.Generic

module RequestTransportationFast = 

  //#region RequestTransportationFast

  //#region enums
  type TypeEnum = PublicTransportEnum of string  |  DrivingEnum of string  |  DrivingpublicTransportEnum of string  
  //#endregion

  type RequestTransportationFast = {
    Type : TypeEnum;
  }
  //#endregion
  