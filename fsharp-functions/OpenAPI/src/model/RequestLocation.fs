namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.Coords

module RequestLocation = 

  //#region RequestLocation

  [<CLIMutable>]
  type RequestLocation = {
    [<JsonProperty(PropertyName = "id")>]
    Id : string;
    [<JsonProperty(PropertyName = "coords")>]
    Coords : Coords;
  }
  
  //#endregion
  