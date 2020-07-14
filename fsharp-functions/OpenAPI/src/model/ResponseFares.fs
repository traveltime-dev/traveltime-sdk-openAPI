namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseFareTicket
open OpenAPI.Model.ResponseFaresBreakdownItem

module ResponseFares = 

  //#region ResponseFares

  [<CLIMutable>]
  type ResponseFares = {
    [<JsonProperty(PropertyName = "breakdown")>]
    Breakdown : ResponseFaresBreakdownItem[];
    [<JsonProperty(PropertyName = "tickets_total")>]
    TicketsTotal : ResponseFareTicket[];
  }
  
  //#endregion
  