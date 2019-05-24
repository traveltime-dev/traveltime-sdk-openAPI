namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.Coords

module ResponseShape = 

  //#region ResponseShape


  type ResponseShape = {
    Shell : Coords[];
    Holes : Coords[][];
  }
  //#endregion
  