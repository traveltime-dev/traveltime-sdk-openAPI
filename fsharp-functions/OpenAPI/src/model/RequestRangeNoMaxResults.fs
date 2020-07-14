namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module RequestRangeNoMaxResults = 

  //#region RequestRangeNoMaxResults

  [<CLIMutable>]
  type RequestRangeNoMaxResults = {
    [<JsonProperty(PropertyName = "enabled")>]
    Enabled : bool;
    [<JsonProperty(PropertyName = "width")>]
    Width : int;
  }
  
  //#endregion
  