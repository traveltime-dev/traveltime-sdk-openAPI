namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseTimeFilterFastLocation

module ResponseTimeFilterFastResult = 

  //#region ResponseTimeFilterFastResult


  type ResponseTimeFilterFastResult = {
    SearchId : string;
    Locations : ResponseTimeFilterFastLocation[];
    Unreachable : string[];
  }
  //#endregion
  