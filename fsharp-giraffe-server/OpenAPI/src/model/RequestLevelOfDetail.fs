namespace OpenAPI.Model

open System
open System.Collections.Generic

module RequestLevelOfDetail = 

  //#region RequestLevelOfDetail

  //#region enums
  type ScaleTypeEnum = SimpleEnum of string  
  //#endregion
  //#region enums
  type LevelEnum = LowestEnum of string  |  LowEnum of string  |  MediumEnum of string  |  HighEnum of string  |  HighestEnum of string  
  //#endregion

  type RequestLevelOfDetail = {
    ScaleType : ScaleTypeEnum;
    Level : LevelEnum;
  }
  //#endregion
  