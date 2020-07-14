namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseFareTicket
open OpenAPI.Model.ResponseTransportationMode

module ResponseFaresBreakdownItem = 

  //#region ResponseFaresBreakdownItem

  [<CLIMutable>]
  type ResponseFaresBreakdownItem = {
    [<JsonProperty(PropertyName = "modes")>]
    Modes : ResponseTransportationMode[];
    [<JsonProperty(PropertyName = "route_part_ids")>]
    RoutePartIds : int[];
    [<JsonProperty(PropertyName = "tickets")>]
    Tickets : ResponseFareTicket[];
  }
  
  //#endregion
  