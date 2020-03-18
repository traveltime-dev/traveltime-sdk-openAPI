namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseMapInfoFeaturesPublicTransport

module ResponseMapInfoFeatures = 

  //#region ResponseMapInfoFeatures


  type ResponseMapInfoFeatures = {
    PublicTransport : ResponseMapInfoFeaturesPublicTransport;
    Fares : bool;
    Postcodes : bool;
  }
  //#endregion
  