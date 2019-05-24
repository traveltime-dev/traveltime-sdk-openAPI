namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseFaresFast

module ResponseTimeFilterFastProperties = 

  //#region ResponseTimeFilterFastProperties


  type ResponseTimeFilterFastProperties = {
    TravelTime : int;
    Fares : ResponseFaresFast;
  }
  //#endregion
  