namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseGeocodingGeoJsonFeature

module ResponseGeocoding = 

  //#region ResponseGeocoding

  [<CLIMutable>]
  type ResponseGeocoding = {
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
    [<JsonProperty(PropertyName = "features")>]
    Features : ResponseGeocodingGeoJsonFeature[];
  }
  
  //#endregion
  