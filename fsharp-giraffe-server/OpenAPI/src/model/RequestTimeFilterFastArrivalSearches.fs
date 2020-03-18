namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestTimeFilterFastArrivalManyToOneSearch
open OpenAPI.Model.RequestTimeFilterFastArrivalOneToManySearch

module RequestTimeFilterFastArrivalSearches = 

  //#region RequestTimeFilterFastArrivalSearches


  type RequestTimeFilterFastArrivalSearches = {
    ManyToOne : RequestTimeFilterFastArrivalManyToOneSearch[];
    OneToMany : RequestTimeFilterFastArrivalOneToManySearch[];
  }
  //#endregion
  