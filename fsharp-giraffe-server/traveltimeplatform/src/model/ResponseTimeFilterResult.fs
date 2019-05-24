namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseTimeFilterLocation

module ResponseTimeFilterResult = 

  //#region ResponseTimeFilterResult


  type ResponseTimeFilterResult = {
    SearchId : string;
    Locations : ResponseTimeFilterLocation[];
    Unreachable : string[];
  }
  //#endregion
  