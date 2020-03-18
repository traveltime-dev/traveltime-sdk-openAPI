namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseGeocodingGeoJsonFeature

module ResponseGeocoding = 

  //#region ResponseGeocoding


  type ResponseGeocoding = {
    Type : string;
    Features : ResponseGeocodingGeoJsonFeature[];
  }
  //#endregion
  