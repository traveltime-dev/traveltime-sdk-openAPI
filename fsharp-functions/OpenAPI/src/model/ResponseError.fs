namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open System.Collections.Generic

module ResponseError = 

  //#region ResponseError

  [<CLIMutable>]
  type ResponseError = {
    [<JsonProperty(PropertyName = "http_status")>]
    HttpStatus : int;
    [<JsonProperty(PropertyName = "error_code")>]
    ErrorCode : int;
    [<JsonProperty(PropertyName = "description")>]
    Description : string;
    [<JsonProperty(PropertyName = "documentation_link")>]
    DocumentationLink : string;
    [<JsonProperty(PropertyName = "additional_info")>]
    AdditionalInfo : IDictionary<string, string[]>;
  }
  
  //#endregion
  