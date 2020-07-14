namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterProperties

module ResponseTimeFilterLocation = 

  //#region ResponseTimeFilterLocation

  [<CLIMutable>]
  type ResponseTimeFilterLocation = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeFilterProperties[];
  }
  
  //#endregion
  