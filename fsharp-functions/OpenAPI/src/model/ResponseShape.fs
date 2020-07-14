namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Coords

module ResponseShape = 

  //#region ResponseShape

  [<CLIMutable>]
  type ResponseShape = {
    [<JsonProperty(PropertyName = "shell")>]
    Shell : Coords[];
    [<JsonProperty(PropertyName = "holes")>]
    Holes : Coords[][];
  }
  
  //#endregion
  