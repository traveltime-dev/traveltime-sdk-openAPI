namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module Coords = 

  //#region Coords

  [<CLIMutable>]
  type Coords = {
    [<JsonProperty(PropertyName = "lat")>]
    Lat : double;
    [<JsonProperty(PropertyName = "lng")>]
    Lng : double;
  }
  
  //#endregion
  