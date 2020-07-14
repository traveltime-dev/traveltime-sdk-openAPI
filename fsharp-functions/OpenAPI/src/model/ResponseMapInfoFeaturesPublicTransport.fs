namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseMapInfoFeaturesPublicTransport = 

  //#region ResponseMapInfoFeaturesPublicTransport

  [<CLIMutable>]
  type ResponseMapInfoFeaturesPublicTransport = {
    [<JsonProperty(PropertyName = "date_start")>]
    DateStart : DateTime;
    [<JsonProperty(PropertyName = "date_end")>]
    DateEnd : DateTime;
  }
  
  //#endregion
  