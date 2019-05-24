namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseFareTicket
open traveltimeplatform.Model.ResponseTransportationMode

module ResponseFaresBreakdownItem = 

  //#region ResponseFaresBreakdownItem


  type ResponseFaresBreakdownItem = {
    Modes : ResponseTransportationMode[];
    RoutePartIds : int[];
    Tickets : ResponseFareTicket[];
  }
  //#endregion
  