namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseGeocodingGeometry
open OpenAPI.Model.ResponseGeocodingProperties

module ResponseGeocodingGeoJsonFeature = 

  //#region ResponseGeocodingGeoJsonFeature


  type ResponseGeocodingGeoJsonFeature = {
    Type : string;
    Geometry : ResponseGeocodingGeometry;
    Properties : ResponseGeocodingProperties;
  }
  //#endregion
  