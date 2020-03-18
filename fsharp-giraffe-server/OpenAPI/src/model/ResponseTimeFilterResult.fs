namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseTimeFilterLocation

module ResponseTimeFilterResult = 

  //#region ResponseTimeFilterResult


  type ResponseTimeFilterResult = {
    SearchId : string;
    Locations : ResponseTimeFilterLocation[];
    Unreachable : string[];
  }
  //#endregion
  