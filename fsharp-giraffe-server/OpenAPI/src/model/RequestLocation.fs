namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.Coords

module RequestLocation = 

  //#region RequestLocation


  type RequestLocation = {
    Id : string;
    Coords : Coords;
  }
  //#endregion
  