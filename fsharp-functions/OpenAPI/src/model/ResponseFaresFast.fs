namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseFareTicket

module ResponseFaresFast = 

  //#region ResponseFaresFast

  [<CLIMutable>]
  type ResponseFaresFast = {
    [<JsonProperty(PropertyName = "tickets_total")>]
    TicketsTotal : ResponseFareTicket[];
  }
  
  //#endregion
  