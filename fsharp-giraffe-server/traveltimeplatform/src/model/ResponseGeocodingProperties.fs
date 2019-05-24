namespace traveltimeplatform.Model

open System
open System.Collections.Generic
open traveltimeplatform.Model.ResponseMapInfoFeatures

module ResponseGeocodingProperties = 

  //#region ResponseGeocodingProperties


  type ResponseGeocodingProperties = {
    Name : string;
    Label : string;
    Score : double;
    HouseNumber : string;
    Street : string;
    Region : string;
    RegionCode : string;
    Neighbourhood : string;
    County : string;
    Macroregion : string;
    City : string;
    Country : string;
    CountryCode : string;
    Continent : string;
    Postcode : string;
    Features : ResponseMapInfoFeatures;
  }
  //#endregion
  