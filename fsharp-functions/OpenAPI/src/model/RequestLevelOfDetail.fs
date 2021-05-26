namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module RequestLevelOfDetail = 

  //#region RequestLevelOfDetail

  [<CLIMutable>]
  type RequestLevelOfDetail = {
    [<JsonProperty(PropertyName = "scale_type")>]
    ScaleType : string;
    [<JsonProperty(PropertyName = "level")>]
    Level : string;
  }
  
  //#endregion
  