namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseFareTicket
open OpenAPI.Model.ResponseTransportationMode

module ResponseFaresBreakdownItem = 

  //#region ResponseFaresBreakdownItem


  type ResponseFaresBreakdownItem = {
    Modes : ResponseTransportationMode[];
    RoutePartIds : int[];
    Tickets : ResponseFareTicket[];
  }
  //#endregion
  