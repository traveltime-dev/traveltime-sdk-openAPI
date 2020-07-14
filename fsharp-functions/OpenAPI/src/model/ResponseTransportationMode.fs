namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json

module ResponseTransportationMode = 

  //#region ResponseTransportationMode

  let CarEnum = "car"
  let ParkingEnum = "parking"
  let BoardingEnum = "boarding"
  let WalkEnum = "walk"
  let BikeEnum = "bike"
  let TrainEnum = "train"
  let RailNationalEnum = "rail_national"
  let RailOvergroundEnum = "rail_overground"
  let RailUndergroundEnum = "rail_underground"
  let RailDlrEnum = "rail_dlr"
  let BusEnum = "bus"
  let CableCarEnum = "cable_car"
  let PlaneEnum = "plane"
  let FerryEnum = "ferry"
  let CoachEnum = "coach"
  type ResponseTransportationMode = string
  
  //#endregion
  