namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.RequestRangeFull
open traveltimeplatform.Model.RequestRoutesProperty
open traveltimeplatform.Model.RequestTransportation

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
  