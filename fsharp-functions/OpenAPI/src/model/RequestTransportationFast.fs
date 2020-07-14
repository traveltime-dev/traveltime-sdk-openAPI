namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module RequestTransportationFast = 

  //#region RequestTransportationFast

  [<CLIMutable>]
  type RequestTransportationFast = {
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
  }
  
  //#endregion
  