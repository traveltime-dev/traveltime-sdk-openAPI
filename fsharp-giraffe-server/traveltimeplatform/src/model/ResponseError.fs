namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open System.Collections.Generic

module ResponseError = 

  //#region ResponseError


  type ResponseError = {
    HttpStatus : int;
    ErrorCode : int;
    Description : string;
    DocumentationLink : string;
    AdditionalInfo : IDictionary<string, string[]>;
  }
  //#endregion
  