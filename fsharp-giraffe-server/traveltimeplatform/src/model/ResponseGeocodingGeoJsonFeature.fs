namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseGeocodingGeometry
open traveltimeplatform.Model.ResponseGeocodingProperties

module ResponseGeocodingGeoJsonFeature = 

  //#region ResponseGeocodingGeoJsonFeature


  type ResponseGeocodingGeoJsonFeature = {
    Type : string;
    Geometry : ResponseGeocodingGeometry;
    Properties : ResponseGeocodingProperties;
  }
  //#endregion
  