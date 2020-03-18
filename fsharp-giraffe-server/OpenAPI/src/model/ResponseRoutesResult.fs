namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseRoutesLocation

module ResponseRoutesResult = 

  //#region ResponseRoutesResult


  type ResponseRoutesResult = {
    SearchId : string;
    Locations : ResponseRoutesLocation[];
    Unreachable : string[];
  }
  //#endregion
  