namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.ResponseBox

module ResponseBoundingBox = 

  //#region ResponseBoundingBox


  type ResponseBoundingBox = {
    Envelope : ResponseBox;
    Boxes : ResponseBox[];
  }
  //#endregion
  