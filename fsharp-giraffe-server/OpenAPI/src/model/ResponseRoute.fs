namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseRoutePart

module ResponseRoute = 

  //#region ResponseRoute


  type ResponseRoute = {
    DepartureTime : DateTime;
    ArrivalTime : DateTime;
    Parts : ResponseRoutePart[];
  }
  //#endregion
  