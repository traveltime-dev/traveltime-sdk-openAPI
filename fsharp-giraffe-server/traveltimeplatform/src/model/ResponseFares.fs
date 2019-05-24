namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseFareTicket
open traveltimeplatform.Model.ResponseFaresBreakdownItem

module ResponseFares = 

  //#region ResponseFares


  type ResponseFares = {
    Breakdown : ResponseFaresBreakdownItem[];
    TicketsTotal : ResponseFareTicket[];
  }
  //#endregion
  