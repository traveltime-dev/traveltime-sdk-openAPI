namespace OpenAPI.Model

open System
open System.Collections.Generic
open Newtonsoft.Json
open OpenAPI.Model.ResponseMapInfoFeatures

module ResponseGeocodingProperties = 

  //#region ResponseGeocodingProperties

  [<CLIMutable>]
  type ResponseGeocodingProperties = {
    [<JsonProperty(PropertyName = "name")>]
    Name : string;
    [<JsonProperty(PropertyName = "label")>]
    Label : string;
    [<JsonProperty(PropertyName = "score")>]
    Score : double;
    [<JsonProperty(PropertyName = "house_number")>]
    HouseNumber : string;
    [<JsonProperty(PropertyName = "street")>]
    Street : string;
    [<JsonProperty(PropertyName = "region")>]
    Region : string;
    [<JsonProperty(PropertyName = "region_code")>]
    RegionCode : string;
    [<JsonProperty(PropertyName = "neighbourhood")>]
    Neighbourhood : string;
    [<JsonProperty(PropertyName = "county")>]
    County : string;
    [<JsonProperty(PropertyName = "macroregion")>]
    Macroregion : string;
    [<JsonProperty(PropertyName = "city")>]
    City : string;
    [<JsonProperty(PropertyName = "country")>]
    Country : string;
    [<JsonProperty(PropertyName = "country_code")>]
    CountryCode : string;
    [<JsonProperty(PropertyName = "continent")>]
    Continent : string;
    [<JsonProperty(PropertyName = "postcode")>]
    Postcode : string;
    [<JsonProperty(PropertyName = "features")>]
    Features : ResponseMapInfoFeatures;
  }
  
  //#endregion
  