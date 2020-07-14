namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseSupportedLocation

module ResponseSupportedLocations = 

  //#region ResponseSupportedLocations

  [<CLIMutable>]
  type ResponseSupportedLocations = {
    [<JsonProperty(PropertyName = "locations")>]
    Locations : ResponseSupportedLocation[];
    [<JsonProperty(PropertyName = "unsupported_locations")>]
    UnsupportedLocations : string[];
  }
  
  //#endregion
  