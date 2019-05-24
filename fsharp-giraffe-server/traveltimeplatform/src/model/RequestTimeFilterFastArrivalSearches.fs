namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestTimeFilterFastArrivalManyToOneSearch
open traveltimeplatform.Model.RequestTimeFilterFastArrivalOneToManySearch

module RequestTimeFilterFastArrivalSearches = 

  //#region RequestTimeFilterFastArrivalSearches


  type RequestTimeFilterFastArrivalSearches = {
    ManyToOne : RequestTimeFilterFastArrivalManyToOneSearch[];
    OneToMany : RequestTimeFilterFastArrivalOneToManySearch[];
  }
  //#endregion
  