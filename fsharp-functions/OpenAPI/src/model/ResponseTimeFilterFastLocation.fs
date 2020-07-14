namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterFastProperties

module ResponseTimeFilterFastLocation = 

  //#region ResponseTimeFilterFastLocation

  [<CLIMutable>]
  type ResponseTimeFilterFastLocation = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseTimeFilterFastProperties[];
  }
  
  //#endregion
  