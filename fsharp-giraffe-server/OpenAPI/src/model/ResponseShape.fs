namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.Coords

module ResponseShape = 

  //#region ResponseShape


  type ResponseShape = {
    Shell : Coords[];
    Holes : Coords[][];
  }
  //#endregion
  