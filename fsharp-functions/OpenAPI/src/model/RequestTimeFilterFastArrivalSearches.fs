namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.RequestTimeFilterFastArrivalManyToOneSearch
open OpenAPI.Model.RequestTimeFilterFastArrivalOneToManySearch

module RequestTimeFilterFastArrivalSearches = 

  //#region RequestTimeFilterFastArrivalSearches

  [<CLIMutable>]
  type RequestTimeFilterFastArrivalSearches = {
    [<JsonProperty(PropertyName = "many_to_one")>]
    ManyToOne : RequestTimeFilterFastArrivalManyToOneSearch[];
    [<JsonProperty(PropertyName = "one_to_many")>]
    OneToMany : RequestTimeFilterFastArrivalOneToManySearch[];
  }
  
  //#endregion
  