namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseGeocodingGeometry
open OpenAPI.Model.ResponseGeocodingProperties

module ResponseGeocodingGeoJsonFeature = 

  //#region ResponseGeocodingGeoJsonFeature

  [<CLIMutable>]
  type ResponseGeocodingGeoJsonFeature = {
    [<JsonProperty(PropertyName = "type")>]
    Type : string;
    [<JsonProperty(PropertyName = "geometry")>]
    Geometry : ResponseGeocodingGeometry;
    [<JsonProperty(PropertyName = "properties")>]
    Properties : ResponseGeocodingProperties;
  }
  
  //#endregion
  