namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseSupportedLocation

module ResponseSupportedLocations = 

  //#region ResponseSupportedLocations


  type ResponseSupportedLocations = {
    Locations : ResponseSupportedLocation[];
    UnsupportedLocations : string[];
  }
  //#endregion
  