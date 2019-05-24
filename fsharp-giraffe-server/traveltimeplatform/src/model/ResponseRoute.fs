namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseRoutePart

module ResponseRoute = 

  //#region ResponseRoute


  type ResponseRoute = {
    DepartureTime : DateTime;
    ArrivalTime : DateTime;
    Parts : ResponseRoutePart[];
  }
  //#endregion
  