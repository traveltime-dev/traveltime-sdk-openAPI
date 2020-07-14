namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseTimeMapProperties = 

  //#region ResponseTimeMapProperties

  [<CLIMutable>]
  type ResponseTimeMapProperties = {
    [<JsonProperty(PropertyName = "is_only_walking")>]
    IsOnlyWalking : bool;
  }
  
  //#endregion
  