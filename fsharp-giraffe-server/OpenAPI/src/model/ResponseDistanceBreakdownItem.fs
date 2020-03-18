namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseTransportationMode

module ResponseDistanceBreakdownItem = 

  //#region ResponseDistanceBreakdownItem


  type ResponseDistanceBreakdownItem = {
    Mode : ResponseTransportationMode;
    Distance : int;
  }
  //#endregion
  