namespace traveltimeplatform.Model

open System
open System.Collections.Generic

module ResponseBox = 

  //#region ResponseBox


  type ResponseBox = {
    MinLat : double;
    MaxLat : double;
    MinLng : double;
    MaxLng : double;
  }
  //#endregion
  