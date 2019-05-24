namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseMapInfoFeaturesPublicTransport

module ResponseMapInfoFeatures = 

  //#region ResponseMapInfoFeatures


  type ResponseMapInfoFeatures = {
    PublicTransport : ResponseMapInfoFeaturesPublicTransport;
    Fares : bool;
    Postcodes : bool;
  }
  //#endregion
  