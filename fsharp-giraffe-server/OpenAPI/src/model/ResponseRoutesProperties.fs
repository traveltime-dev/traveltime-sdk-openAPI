namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseFares
open OpenAPI.Model.ResponseRoute

module ResponseRoutesProperties = 

  //#region ResponseRoutesProperties


  type ResponseRoutesProperties = {
    TravelTime : int;
    Distance : int;
    Fares : ResponseFares;
    Route : ResponseRoute;
  }
  //#endregion
  