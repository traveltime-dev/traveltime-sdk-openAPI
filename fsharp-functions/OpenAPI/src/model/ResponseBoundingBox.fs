namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseBox

module ResponseBoundingBox = 

  //#region ResponseBoundingBox

  [<CLIMutable>]
  type ResponseBoundingBox = {
    [<JsonProperty(PropertyName = "envelope")>]
    Envelope : ResponseBox;
    [<JsonProperty(PropertyName = "boxes")>]
    Boxes : ResponseBox[];
  }
  
  //#endregion
  