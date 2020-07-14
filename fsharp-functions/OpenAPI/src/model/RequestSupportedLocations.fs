namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestLocation

module RequestSupportedLocations = 

  //#region RequestSupportedLocations

  [<CLIMutable>]
  type RequestSupportedLocations = {
    [<JsonProperty(PropertyName = "locations")>]
    Locations : RequestLocation[];
  }
  
  //#endregion
  