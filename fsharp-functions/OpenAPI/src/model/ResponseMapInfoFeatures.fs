namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseMapInfoFeaturesPublicTransport

module ResponseMapInfoFeatures = 

  //#region ResponseMapInfoFeatures

  [<CLIMutable>]
  type ResponseMapInfoFeatures = {
    [<JsonProperty(PropertyName = "public_transport")>]
    PublicTransport : ResponseMapInfoFeaturesPublicTransport;
    [<JsonProperty(PropertyName = "fares")>]
    Fares : bool;
    [<JsonProperty(PropertyName = "postcodes")>]
    Postcodes : bool;
  }
  
  //#endregion
  