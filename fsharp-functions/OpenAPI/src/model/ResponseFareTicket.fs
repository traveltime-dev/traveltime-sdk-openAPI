namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseFareTicket = 

  //#region ResponseFareTicket

  [<CLIMutable>]
  type ResponseFareTicket = {
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
    [<JsonProperty(PropertyName = "price")>]
    Price : double;
    [<JsonProperty(PropertyName = "currency")>]
    Currency : string;
  }
  
  //#endregion
  