namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseMapInfoFeatures

module ResponseMapInfoMap = 

  //#region ResponseMapInfoMap

  [<CLIMutable>]
  type ResponseMapInfoMap = {
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "features")>]
    Features : ResponseMapInfoFeatures;
  }
  
  //#endregion
  