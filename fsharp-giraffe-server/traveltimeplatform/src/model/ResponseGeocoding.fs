namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseGeocodingGeoJsonFeature

module ResponseGeocoding = 

  //#region ResponseGeocoding


  type ResponseGeocoding = {
    Type : string;
    Features : ResponseGeocodingGeoJsonFeature[];
  }
  //#endregion
  