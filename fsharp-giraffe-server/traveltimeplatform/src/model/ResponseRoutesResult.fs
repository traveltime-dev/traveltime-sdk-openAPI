namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseRoutesLocation

module ResponseRoutesResult = 

  //#region ResponseRoutesResult


  type ResponseRoutesResult = {
    SearchId : string;
    Locations : ResponseRoutesLocation[];
    Unreachable : string[];
  }
  //#endregion
  