namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcodesProperties

module ResponseTimeFilterPostcode = 

  //#region ResponseTimeFilterPostcode

  [<CLIMutable>]
  type ResponseTimeFilterPostcode = {
    [<JsonProperty(PropertyName = "code")>]
    Code : string;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeFilterPostcodesProperties[];
  }
  
  //#endregion
  