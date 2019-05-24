namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTransportationMode

module ResponseDistanceBreakdownItem = 

  //#region ResponseDistanceBreakdownItem


  type ResponseDistanceBreakdownItem = {
    Mode : ResponseTransportationMode;
    Distance : int;
  }
  //#endregion
  