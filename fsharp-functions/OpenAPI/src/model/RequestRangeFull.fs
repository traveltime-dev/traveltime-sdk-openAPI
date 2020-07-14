namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module RequestRangeFull = 

  //#region RequestRangeFull

  [<CLIMutable>]
  type RequestRangeFull = {
    [<JsonProperty(PropertyName = "enabled")>]
    Enabled : bool;
    [<JsonProperty(PropertyName = "max_results")>]
    MaxResults : int;
    [<JsonProperty(PropertyName = "width")>]
    Width : int;
  }
  
  //#endregion
  