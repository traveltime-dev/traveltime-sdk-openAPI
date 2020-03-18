namespace OpenAPI.Model

open System
open System.Collections.Generic

module ResponseFareTicket = 

  //#region ResponseFareTicket

  //#region enums
  type TypeEnum = SingleEnum of string  |  WeekEnum of string  |  MonthEnum of string  |  YearEnum of string  
  //#endregion

  type ResponseFareTicket = {
    Type : TypeEnum;
    Price : double;
    Currency : string;
  }
  //#endregion
  