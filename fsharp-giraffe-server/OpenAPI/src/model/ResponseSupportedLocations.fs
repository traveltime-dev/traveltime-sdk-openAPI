namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseSupportedLocation

module ResponseSupportedLocations = 

  //#region ResponseSupportedLocations


  type ResponseSupportedLocations = {
    Locations : ResponseSupportedLocation[];
    UnsupportedLocations : string[];
  }
  //#endregion
  