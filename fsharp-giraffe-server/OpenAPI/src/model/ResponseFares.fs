namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseFareTicket
open OpenAPI.Model.ResponseFaresBreakdownItem

module ResponseFares = 

  //#region ResponseFares


  type ResponseFares = {
    Breakdown : ResponseFaresBreakdownItem[];
    TicketsTotal : ResponseFareTicket[];
  }
  //#endregion
  