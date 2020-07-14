namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseGeocodingGeometry = 

  //#region ResponseGeocodingGeometry

  [<CLIMutable>]
  type ResponseGeocodingGeometry = {
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
    [<JsonProperty(PropertyName = "coordinates")>]
    Coordinates : double[];
  }
  
  //#endregion
  