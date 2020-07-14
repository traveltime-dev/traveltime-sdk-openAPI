namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcodesResult

module ResponseTimeFilterPostcodes = 

  //#region ResponseTimeFilterPostcodes

  [<CLIMutable>]
  type ResponseTimeFilterPostcodes = {
    [<JsonProperty(PropertyName = "results")>]
    Results : ResponseTimeFilterPostcodesResult[];
  }
  
  //#endregion
  