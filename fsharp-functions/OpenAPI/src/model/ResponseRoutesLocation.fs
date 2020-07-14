namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseRoutesProperties

module ResponseRoutesLocation = 

  //#region ResponseRoutesLocation

  [<CLIMutable>]
  type ResponseRoutesLocation = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseRoutesProperties[];
  }
  
  //#endregion
  