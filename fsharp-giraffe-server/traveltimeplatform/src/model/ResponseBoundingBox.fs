namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseBox

module ResponseBoundingBox = 

  //#region ResponseBoundingBox


  type ResponseBoundingBox = {
    Envelope : ResponseBox;
    Boxes : ResponseBox[];
  }
  //#endregion
  