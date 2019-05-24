namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseFares
open traveltimeplatform.Model.ResponseRoute

module ResponseRoutesProperties = 

  //#region ResponseRoutesProperties


  type ResponseRoutesProperties = {
    TravelTime : int;
    Distance : int;
    Fares : ResponseFares;
    Route : ResponseRoute;
  }
  //#endregion
  