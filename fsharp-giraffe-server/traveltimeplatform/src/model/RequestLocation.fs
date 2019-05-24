namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.Coords

module RequestLocation = 

  //#region RequestLocation


  type RequestLocation = {
    Id : string;
    Coords : Coords;
  }
  //#endregion
  