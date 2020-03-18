namespace OpenAPI.Model

open System
open System.Collections.Generic
open OpenAPI.Model.RequestRangeFull
open OpenAPI.Model.RequestRoutesProperty
open OpenAPI.Model.RequestTransportation

module RequestRoutesDepartureSearch = 

  //#region RequestRoutesDepartureSearch


  type RequestRoutesDepartureSearch = {
    Id : string;
    DepartureLocationId : string;
    ArrivalLocationIds : string[];
    Transportation : RequestTransportation;
    DepartureTime : DateTime;
    Properties : RequestRoutesProperty[];
    Range : RequestRangeFull;
  }
  //#endregion
  