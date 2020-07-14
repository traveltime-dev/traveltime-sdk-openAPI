namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseTimeFilterPostcode

module ResponseTimeFilterPostcodesResult = 

  //#region ResponseTimeFilterPostcodesResult

  [<CLIMutable>]
  type ResponseTimeFilterPostcodesResult = {
    [<JsonProperty(PropertyName = "search_id")>]
    SearchId : string;
    [<JsonProperty(PropertyName = "postcodes")>]
    Postcodes : ResponseTimeFilterPostcode[];
  }
  
  //#endregion
  