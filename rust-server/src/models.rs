#![allow(unused_imports, unused_qualifications, unused_extern_crates)]
extern crate chrono;
extern crate uuid;


use serde::ser::Serializer;

use std::collections::HashMap;
use models;
use swagger;


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct Coords {
    #[serde(rename = "lat")]
    pub lat: f64,

    #[serde(rename = "lng")]
    pub lng: f64,

}

impl Coords {
    pub fn new(lat: f64, lng: f64, ) -> Coords {
        Coords {
            lat: lat,
            lng: lng,
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum RequestArrivalTimePeriod { 
    #[serde(rename = "weekday_morning")]
    WEEKDAY_MORNING,
}

impl ::std::fmt::Display for RequestArrivalTimePeriod {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            RequestArrivalTimePeriod::WEEKDAY_MORNING => write!(f, "{}", "weekday_morning"),
        }
    }
}

impl ::std::str::FromStr for RequestArrivalTimePeriod {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "weekday_morning" => Ok(RequestArrivalTimePeriod::WEEKDAY_MORNING),
            _ => Err(()),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestDepartureArrivalLocationOne(String);

impl ::std::convert::From<String> for RequestDepartureArrivalLocationOne {
    fn from(x: String) -> Self {
        RequestDepartureArrivalLocationOne(x)
    }
}

impl ::std::convert::From<RequestDepartureArrivalLocationOne> for String {
    fn from(x: RequestDepartureArrivalLocationOne) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestDepartureArrivalLocationOne {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestDepartureArrivalLocationOne {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestDepartureArrivalTime(chrono::DateTime<chrono::Utc>);

impl ::std::convert::From<chrono::DateTime<chrono::Utc>> for RequestDepartureArrivalTime {
    fn from(x: chrono::DateTime<chrono::Utc>) -> Self {
        RequestDepartureArrivalTime(x)
    }
}

impl ::std::convert::From<RequestDepartureArrivalTime> for chrono::DateTime<chrono::Utc> {
    fn from(x: RequestDepartureArrivalTime) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestDepartureArrivalTime {
    type Target = chrono::DateTime<chrono::Utc>;
    fn deref(&self) -> &chrono::DateTime<chrono::Utc> {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestDepartureArrivalTime {
    fn deref_mut(&mut self) -> &mut chrono::DateTime<chrono::Utc> {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestLocation {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "coords")]
    pub coords: models::Coords,

}

impl RequestLocation {
    pub fn new(id: String, coords: models::Coords, ) -> RequestLocation {
        RequestLocation {
            id: id,
            coords: coords,
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestLocationId(String);

impl ::std::convert::From<String> for RequestLocationId {
    fn from(x: String) -> Self {
        RequestLocationId(x)
    }
}

impl ::std::convert::From<RequestLocationId> for String {
    fn from(x: RequestLocationId) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestLocationId {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestLocationId {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestRangeEnabled(bool);

impl ::std::convert::From<bool> for RequestRangeEnabled {
    fn from(x: bool) -> Self {
        RequestRangeEnabled(x)
    }
}

impl ::std::convert::From<RequestRangeEnabled> for bool {
    fn from(x: RequestRangeEnabled) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestRangeEnabled {
    type Target = bool;
    fn deref(&self) -> &bool {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestRangeEnabled {
    fn deref_mut(&mut self) -> &mut bool {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestRangeFull {
    #[serde(rename = "enabled")]
    pub enabled: bool,

    #[serde(rename = "max_results")]
    pub max_results: u32,

    #[serde(rename = "width")]
    pub width: u32,

}

impl RequestRangeFull {
    pub fn new(enabled: bool, max_results: u32, width: u32, ) -> RequestRangeFull {
        RequestRangeFull {
            enabled: enabled,
            max_results: max_results,
            width: width,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestRangeNoMaxResults {
    #[serde(rename = "enabled")]
    pub enabled: bool,

    #[serde(rename = "width")]
    pub width: u32,

}

impl RequestRangeNoMaxResults {
    pub fn new(enabled: bool, width: u32, ) -> RequestRangeNoMaxResults {
        RequestRangeNoMaxResults {
            enabled: enabled,
            width: width,
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestRangeWidth(i32);

impl ::std::convert::From<i32> for RequestRangeWidth {
    fn from(x: i32) -> Self {
        RequestRangeWidth(x)
    }
}

impl ::std::convert::From<RequestRangeWidth> for i32 {
    fn from(x: RequestRangeWidth) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestRangeWidth {
    type Target = i32;
    fn deref(&self) -> &i32 {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestRangeWidth {
    fn deref_mut(&mut self) -> &mut i32 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestRoutes {
    #[serde(rename = "locations")]
    pub locations: Vec<models::RequestLocation>,

    #[serde(rename = "departure_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub departure_searches: Option<Vec<models::RequestRoutesDepartureSearch>>,

    #[serde(rename = "arrival_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub arrival_searches: Option<Vec<models::RequestRoutesArrivalSearch>>,

}

impl RequestRoutes {
    pub fn new(locations: Vec<models::RequestLocation>, ) -> RequestRoutes {
        RequestRoutes {
            locations: locations,
            departure_searches: None,
            arrival_searches: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestRoutesArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "departure_location_ids")]
    pub departure_location_ids: Vec<String>,

    #[serde(rename = "arrival_location_id")]
    pub arrival_location_id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestRoutesProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestRoutesArrivalSearch {
    pub fn new(id: String, departure_location_ids: Vec<String>, arrival_location_id: String, transportation: models::RequestTransportation, arrival_time: chrono::DateTime<chrono::Utc>, properties: Vec<models::RequestRoutesProperty>, ) -> RequestRoutesArrivalSearch {
        RequestRoutesArrivalSearch {
            id: id,
            departure_location_ids: departure_location_ids,
            arrival_location_id: arrival_location_id,
            transportation: transportation,
            arrival_time: arrival_time,
            properties: properties,
            range: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestRoutesDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "departure_location_id")]
    pub departure_location_id: String,

    #[serde(rename = "arrival_location_ids")]
    pub arrival_location_ids: Vec<String>,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestRoutesProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestRoutesDepartureSearch {
    pub fn new(id: String, departure_location_id: String, arrival_location_ids: Vec<String>, transportation: models::RequestTransportation, departure_time: chrono::DateTime<chrono::Utc>, properties: Vec<models::RequestRoutesProperty>, ) -> RequestRoutesDepartureSearch {
        RequestRoutesDepartureSearch {
            id: id,
            departure_location_id: departure_location_id,
            arrival_location_ids: arrival_location_ids,
            transportation: transportation,
            departure_time: departure_time,
            properties: properties,
            range: None,
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum RequestRoutesProperty { 
    #[serde(rename = "travel_time")]
    TRAVEL_TIME,
    #[serde(rename = "distance")]
    DISTANCE,
    #[serde(rename = "fares")]
    FARES,
    #[serde(rename = "route")]
    ROUTE,
}

impl ::std::fmt::Display for RequestRoutesProperty {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            RequestRoutesProperty::TRAVEL_TIME => write!(f, "{}", "travel_time"),
            RequestRoutesProperty::DISTANCE => write!(f, "{}", "distance"),
            RequestRoutesProperty::FARES => write!(f, "{}", "fares"),
            RequestRoutesProperty::ROUTE => write!(f, "{}", "route"),
        }
    }
}

impl ::std::str::FromStr for RequestRoutesProperty {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "travel_time" => Ok(RequestRoutesProperty::TRAVEL_TIME),
            "distance" => Ok(RequestRoutesProperty::DISTANCE),
            "fares" => Ok(RequestRoutesProperty::FARES),
            "route" => Ok(RequestRoutesProperty::ROUTE),
            _ => Err(()),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestSearchId(String);

impl ::std::convert::From<String> for RequestSearchId {
    fn from(x: String) -> Self {
        RequestSearchId(x)
    }
}

impl ::std::convert::From<RequestSearchId> for String {
    fn from(x: RequestSearchId) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestSearchId {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestSearchId {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestSupportedLocations {
    #[serde(rename = "locations")]
    pub locations: Vec<models::RequestLocation>,

}

impl RequestSupportedLocations {
    pub fn new(locations: Vec<models::RequestLocation>, ) -> RequestSupportedLocations {
        RequestSupportedLocations {
            locations: locations,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilter {
    #[serde(rename = "locations")]
    pub locations: Vec<models::RequestLocation>,

    #[serde(rename = "departure_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub departure_searches: Option<Vec<models::RequestTimeFilterDepartureSearch>>,

    #[serde(rename = "arrival_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub arrival_searches: Option<Vec<models::RequestTimeFilterArrivalSearch>>,

}

impl RequestTimeFilter {
    pub fn new(locations: Vec<models::RequestLocation>, ) -> RequestTimeFilter {
        RequestTimeFilter {
            locations: locations,
            departure_searches: None,
            arrival_searches: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "departure_location_ids")]
    pub departure_location_ids: Vec<String>,

    #[serde(rename = "arrival_location_id")]
    pub arrival_location_id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterArrivalSearch {
    pub fn new(id: String, departure_location_ids: Vec<String>, arrival_location_id: String, transportation: models::RequestTransportation, travel_time: u32, arrival_time: chrono::DateTime<chrono::Utc>, properties: Vec<models::RequestTimeFilterProperty>, ) -> RequestTimeFilterArrivalSearch {
        RequestTimeFilterArrivalSearch {
            id: id,
            departure_location_ids: departure_location_ids,
            arrival_location_id: arrival_location_id,
            transportation: transportation,
            travel_time: travel_time,
            arrival_time: arrival_time,
            properties: properties,
            range: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "departure_location_id")]
    pub departure_location_id: String,

    #[serde(rename = "arrival_location_ids")]
    pub arrival_location_ids: Vec<String>,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterDepartureSearch {
    pub fn new(id: String, departure_location_id: String, arrival_location_ids: Vec<String>, transportation: models::RequestTransportation, travel_time: u32, departure_time: chrono::DateTime<chrono::Utc>, properties: Vec<models::RequestTimeFilterProperty>, ) -> RequestTimeFilterDepartureSearch {
        RequestTimeFilterDepartureSearch {
            id: id,
            departure_location_id: departure_location_id,
            arrival_location_ids: arrival_location_ids,
            transportation: transportation,
            travel_time: travel_time,
            departure_time: departure_time,
            properties: properties,
            range: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterFast {
    #[serde(rename = "locations")]
    pub locations: Vec<models::RequestLocation>,

    #[serde(rename = "arrival_searches")]
    pub arrival_searches: models::RequestTimeFilterFastArrivalSearches,

}

impl RequestTimeFilterFast {
    pub fn new(locations: Vec<models::RequestLocation>, arrival_searches: models::RequestTimeFilterFastArrivalSearches, ) -> RequestTimeFilterFast {
        RequestTimeFilterFast {
            locations: locations,
            arrival_searches: arrival_searches,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterFastArrivalManyToOneSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "arrival_location_id")]
    pub arrival_location_id: String,

    #[serde(rename = "departure_location_ids")]
    pub departure_location_ids: Vec<String>,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportationFast,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "arrival_time_period")]
    pub arrival_time_period: models::RequestArrivalTimePeriod,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterFastProperty>,

}

impl RequestTimeFilterFastArrivalManyToOneSearch {
    pub fn new(id: String, arrival_location_id: String, departure_location_ids: Vec<String>, transportation: models::RequestTransportationFast, travel_time: u32, arrival_time_period: models::RequestArrivalTimePeriod, properties: Vec<models::RequestTimeFilterFastProperty>, ) -> RequestTimeFilterFastArrivalManyToOneSearch {
        RequestTimeFilterFastArrivalManyToOneSearch {
            id: id,
            arrival_location_id: arrival_location_id,
            departure_location_ids: departure_location_ids,
            transportation: transportation,
            travel_time: travel_time,
            arrival_time_period: arrival_time_period,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterFastArrivalOneToManySearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "departure_location_id")]
    pub departure_location_id: String,

    #[serde(rename = "arrival_location_ids")]
    pub arrival_location_ids: Vec<String>,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportationFast,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "arrival_time_period")]
    pub arrival_time_period: models::RequestArrivalTimePeriod,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterFastProperty>,

}

impl RequestTimeFilterFastArrivalOneToManySearch {
    pub fn new(id: String, departure_location_id: String, arrival_location_ids: Vec<String>, transportation: models::RequestTransportationFast, travel_time: u32, arrival_time_period: models::RequestArrivalTimePeriod, properties: Vec<models::RequestTimeFilterFastProperty>, ) -> RequestTimeFilterFastArrivalOneToManySearch {
        RequestTimeFilterFastArrivalOneToManySearch {
            id: id,
            departure_location_id: departure_location_id,
            arrival_location_ids: arrival_location_ids,
            transportation: transportation,
            travel_time: travel_time,
            arrival_time_period: arrival_time_period,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterFastArrivalSearches {
    #[serde(rename = "many_to_one")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub many_to_one: Option<Vec<models::RequestTimeFilterFastArrivalManyToOneSearch>>,

    #[serde(rename = "one_to_many")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub one_to_many: Option<Vec<models::RequestTimeFilterFastArrivalOneToManySearch>>,

}

impl RequestTimeFilterFastArrivalSearches {
    pub fn new() -> RequestTimeFilterFastArrivalSearches {
        RequestTimeFilterFastArrivalSearches {
            many_to_one: None,
            one_to_many: None,
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum RequestTimeFilterFastProperty { 
    #[serde(rename = "travel_time")]
    TRAVEL_TIME,
    #[serde(rename = "fares")]
    FARES,
}

impl ::std::fmt::Display for RequestTimeFilterFastProperty {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            RequestTimeFilterFastProperty::TRAVEL_TIME => write!(f, "{}", "travel_time"),
            RequestTimeFilterFastProperty::FARES => write!(f, "{}", "fares"),
        }
    }
}

impl ::std::str::FromStr for RequestTimeFilterFastProperty {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "travel_time" => Ok(RequestTimeFilterFastProperty::TRAVEL_TIME),
            "fares" => Ok(RequestTimeFilterFastProperty::FARES),
            _ => Err(()),
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodeDistricts {
    #[serde(rename = "departure_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub departure_searches: Option<Vec<models::RequestTimeFilterPostcodeDistrictsDepartureSearch>>,

    #[serde(rename = "arrival_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub arrival_searches: Option<Vec<models::RequestTimeFilterPostcodeDistrictsArrivalSearch>>,

}

impl RequestTimeFilterPostcodeDistricts {
    pub fn new() -> RequestTimeFilterPostcodeDistricts {
        RequestTimeFilterPostcodeDistricts {
            departure_searches: None,
            arrival_searches: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodeDistrictsArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodeDistrictsProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodeDistrictsArrivalSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u32, arrival_time: chrono::DateTime<chrono::Utc>, reachable_postcodes_threshold: f64, properties: Vec<models::RequestTimeFilterPostcodeDistrictsProperty>, ) -> RequestTimeFilterPostcodeDistrictsArrivalSearch {
        RequestTimeFilterPostcodeDistrictsArrivalSearch {
            id: id,
            transportation: transportation,
            travel_time: travel_time,
            arrival_time: arrival_time,
            reachable_postcodes_threshold: reachable_postcodes_threshold,
            properties: properties,
            range: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodeDistrictsDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodeDistrictsProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodeDistrictsDepartureSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u32, departure_time: chrono::DateTime<chrono::Utc>, reachable_postcodes_threshold: f64, properties: Vec<models::RequestTimeFilterPostcodeDistrictsProperty>, ) -> RequestTimeFilterPostcodeDistrictsDepartureSearch {
        RequestTimeFilterPostcodeDistrictsDepartureSearch {
            id: id,
            transportation: transportation,
            travel_time: travel_time,
            departure_time: departure_time,
            reachable_postcodes_threshold: reachable_postcodes_threshold,
            properties: properties,
            range: None,
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum RequestTimeFilterPostcodeDistrictsProperty { 
    #[serde(rename = "travel_time_reachable")]
    TRAVEL_TIME_REACHABLE,
    #[serde(rename = "travel_time_all")]
    TRAVEL_TIME_ALL,
    #[serde(rename = "coverage")]
    COVERAGE,
}

impl ::std::fmt::Display for RequestTimeFilterPostcodeDistrictsProperty {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            RequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_REACHABLE => write!(f, "{}", "travel_time_reachable"),
            RequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_ALL => write!(f, "{}", "travel_time_all"),
            RequestTimeFilterPostcodeDistrictsProperty::COVERAGE => write!(f, "{}", "coverage"),
        }
    }
}

impl ::std::str::FromStr for RequestTimeFilterPostcodeDistrictsProperty {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "travel_time_reachable" => Ok(RequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_REACHABLE),
            "travel_time_all" => Ok(RequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_ALL),
            "coverage" => Ok(RequestTimeFilterPostcodeDistrictsProperty::COVERAGE),
            _ => Err(()),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold(f64);

impl ::std::convert::From<f64> for RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold {
    fn from(x: f64) -> Self {
        RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold(x)
    }
}

impl ::std::convert::From<RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold> for f64 {
    fn from(x: RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold {
    type Target = f64;
    fn deref(&self) -> &f64 {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold {
    fn deref_mut(&mut self) -> &mut f64 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodeSectors {
    #[serde(rename = "departure_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub departure_searches: Option<Vec<models::RequestTimeFilterPostcodeSectorsDepartureSearch>>,

    #[serde(rename = "arrival_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub arrival_searches: Option<Vec<models::RequestTimeFilterPostcodeSectorsArrivalSearch>>,

}

impl RequestTimeFilterPostcodeSectors {
    pub fn new() -> RequestTimeFilterPostcodeSectors {
        RequestTimeFilterPostcodeSectors {
            departure_searches: None,
            arrival_searches: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodeSectorsArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodeSectorsProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodeSectorsArrivalSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u32, arrival_time: chrono::DateTime<chrono::Utc>, reachable_postcodes_threshold: f64, properties: Vec<models::RequestTimeFilterPostcodeSectorsProperty>, ) -> RequestTimeFilterPostcodeSectorsArrivalSearch {
        RequestTimeFilterPostcodeSectorsArrivalSearch {
            id: id,
            transportation: transportation,
            travel_time: travel_time,
            arrival_time: arrival_time,
            reachable_postcodes_threshold: reachable_postcodes_threshold,
            properties: properties,
            range: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodeSectorsDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodeSectorsProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodeSectorsDepartureSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u32, departure_time: chrono::DateTime<chrono::Utc>, reachable_postcodes_threshold: f64, properties: Vec<models::RequestTimeFilterPostcodeSectorsProperty>, ) -> RequestTimeFilterPostcodeSectorsDepartureSearch {
        RequestTimeFilterPostcodeSectorsDepartureSearch {
            id: id,
            transportation: transportation,
            travel_time: travel_time,
            departure_time: departure_time,
            reachable_postcodes_threshold: reachable_postcodes_threshold,
            properties: properties,
            range: None,
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum RequestTimeFilterPostcodeSectorsProperty { 
    #[serde(rename = "travel_time_reachable")]
    TRAVEL_TIME_REACHABLE,
    #[serde(rename = "travel_time_all")]
    TRAVEL_TIME_ALL,
    #[serde(rename = "coverage")]
    COVERAGE,
}

impl ::std::fmt::Display for RequestTimeFilterPostcodeSectorsProperty {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            RequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_REACHABLE => write!(f, "{}", "travel_time_reachable"),
            RequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_ALL => write!(f, "{}", "travel_time_all"),
            RequestTimeFilterPostcodeSectorsProperty::COVERAGE => write!(f, "{}", "coverage"),
        }
    }
}

impl ::std::str::FromStr for RequestTimeFilterPostcodeSectorsProperty {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "travel_time_reachable" => Ok(RequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_REACHABLE),
            "travel_time_all" => Ok(RequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_ALL),
            "coverage" => Ok(RequestTimeFilterPostcodeSectorsProperty::COVERAGE),
            _ => Err(()),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold(f64);

impl ::std::convert::From<f64> for RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold {
    fn from(x: f64) -> Self {
        RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold(x)
    }
}

impl ::std::convert::From<RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold> for f64 {
    fn from(x: RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold {
    type Target = f64;
    fn deref(&self) -> &f64 {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold {
    fn deref_mut(&mut self) -> &mut f64 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodes {
    #[serde(rename = "departure_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub departure_searches: Option<Vec<models::RequestTimeFilterPostcodesDepartureSearch>>,

    #[serde(rename = "arrival_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub arrival_searches: Option<Vec<models::RequestTimeFilterPostcodesArrivalSearch>>,

}

impl RequestTimeFilterPostcodes {
    pub fn new() -> RequestTimeFilterPostcodes {
        RequestTimeFilterPostcodes {
            departure_searches: None,
            arrival_searches: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodesArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodesProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodesArrivalSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u32, arrival_time: chrono::DateTime<chrono::Utc>, properties: Vec<models::RequestTimeFilterPostcodesProperty>, ) -> RequestTimeFilterPostcodesArrivalSearch {
        RequestTimeFilterPostcodesArrivalSearch {
            id: id,
            transportation: transportation,
            travel_time: travel_time,
            arrival_time: arrival_time,
            properties: properties,
            range: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeFilterPostcodesDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodesProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodesDepartureSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u32, departure_time: chrono::DateTime<chrono::Utc>, properties: Vec<models::RequestTimeFilterPostcodesProperty>, ) -> RequestTimeFilterPostcodesDepartureSearch {
        RequestTimeFilterPostcodesDepartureSearch {
            id: id,
            transportation: transportation,
            travel_time: travel_time,
            departure_time: departure_time,
            properties: properties,
            range: None,
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum RequestTimeFilterPostcodesProperty { 
    #[serde(rename = "travel_time")]
    TRAVEL_TIME,
    #[serde(rename = "distance")]
    DISTANCE,
}

impl ::std::fmt::Display for RequestTimeFilterPostcodesProperty {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            RequestTimeFilterPostcodesProperty::TRAVEL_TIME => write!(f, "{}", "travel_time"),
            RequestTimeFilterPostcodesProperty::DISTANCE => write!(f, "{}", "distance"),
        }
    }
}

impl ::std::str::FromStr for RequestTimeFilterPostcodesProperty {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "travel_time" => Ok(RequestTimeFilterPostcodesProperty::TRAVEL_TIME),
            "distance" => Ok(RequestTimeFilterPostcodesProperty::DISTANCE),
            _ => Err(()),
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum RequestTimeFilterProperty { 
    #[serde(rename = "travel_time")]
    TRAVEL_TIME,
    #[serde(rename = "distance")]
    DISTANCE,
    #[serde(rename = "distance_breakdown")]
    DISTANCE_BREAKDOWN,
    #[serde(rename = "fares")]
    FARES,
    #[serde(rename = "route")]
    ROUTE,
}

impl ::std::fmt::Display for RequestTimeFilterProperty {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            RequestTimeFilterProperty::TRAVEL_TIME => write!(f, "{}", "travel_time"),
            RequestTimeFilterProperty::DISTANCE => write!(f, "{}", "distance"),
            RequestTimeFilterProperty::DISTANCE_BREAKDOWN => write!(f, "{}", "distance_breakdown"),
            RequestTimeFilterProperty::FARES => write!(f, "{}", "fares"),
            RequestTimeFilterProperty::ROUTE => write!(f, "{}", "route"),
        }
    }
}

impl ::std::str::FromStr for RequestTimeFilterProperty {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "travel_time" => Ok(RequestTimeFilterProperty::TRAVEL_TIME),
            "distance" => Ok(RequestTimeFilterProperty::DISTANCE),
            "distance_breakdown" => Ok(RequestTimeFilterProperty::DISTANCE_BREAKDOWN),
            "fares" => Ok(RequestTimeFilterProperty::FARES),
            "route" => Ok(RequestTimeFilterProperty::ROUTE),
            _ => Err(()),
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeMap {
    #[serde(rename = "departure_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub departure_searches: Option<Vec<models::RequestTimeMapDepartureSearch>>,

    #[serde(rename = "arrival_searches")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub arrival_searches: Option<Vec<models::RequestTimeMapArrivalSearch>>,

    #[serde(rename = "unions")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub unions: Option<Vec<models::RequestUnionOnIntersection>>,

    #[serde(rename = "intersections")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub intersections: Option<Vec<models::RequestUnionOnIntersection>>,

}

impl RequestTimeMap {
    pub fn new() -> RequestTimeMap {
        RequestTimeMap {
            departure_searches: None,
            arrival_searches: None,
            unions: None,
            intersections: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeMapArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "coords")]
    pub coords: models::Coords,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "properties")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub properties: Option<Vec<models::RequestTimeMapProperty>>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeNoMaxResults>,

}

impl RequestTimeMapArrivalSearch {
    pub fn new(id: String, coords: models::Coords, transportation: models::RequestTransportation, travel_time: u32, arrival_time: chrono::DateTime<chrono::Utc>, ) -> RequestTimeMapArrivalSearch {
        RequestTimeMapArrivalSearch {
            id: id,
            coords: coords,
            transportation: transportation,
            travel_time: travel_time,
            arrival_time: arrival_time,
            properties: None,
            range: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTimeMapDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "coords")]
    pub coords: models::Coords,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u32,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "properties")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub properties: Option<Vec<models::RequestTimeMapProperty>>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeNoMaxResults>,

}

impl RequestTimeMapDepartureSearch {
    pub fn new(id: String, coords: models::Coords, transportation: models::RequestTransportation, travel_time: u32, departure_time: chrono::DateTime<chrono::Utc>, ) -> RequestTimeMapDepartureSearch {
        RequestTimeMapDepartureSearch {
            id: id,
            coords: coords,
            transportation: transportation,
            travel_time: travel_time,
            departure_time: departure_time,
            properties: None,
            range: None,
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum RequestTimeMapProperty { 
    #[serde(rename = "is_only_walking")]
    IS_ONLY_WALKING,
}

impl ::std::fmt::Display for RequestTimeMapProperty {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            RequestTimeMapProperty::IS_ONLY_WALKING => write!(f, "{}", "is_only_walking"),
        }
    }
}

impl ::std::str::FromStr for RequestTimeMapProperty {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "is_only_walking" => Ok(RequestTimeMapProperty::IS_ONLY_WALKING),
            _ => Err(()),
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTransportation {
    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "type")]
    pub _type: String,

    #[serde(rename = "pt_change_delay")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pt_change_delay: Option<i32>,

    #[serde(rename = "walking_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub walking_time: Option<i32>,

    #[serde(rename = "driving_time_to_station")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub driving_time_to_station: Option<i32>,

    #[serde(rename = "parking_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub parking_time: Option<i32>,

    #[serde(rename = "boarding_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub boarding_time: Option<i32>,

}

impl RequestTransportation {
    pub fn new(_type: String, ) -> RequestTransportation {
        RequestTransportation {
            _type: _type,
            pt_change_delay: None,
            walking_time: None,
            driving_time_to_station: None,
            parking_time: None,
            boarding_time: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestTransportationFast {
    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "type")]
    pub _type: String,

}

impl RequestTransportationFast {
    pub fn new(_type: String, ) -> RequestTransportationFast {
        RequestTransportationFast {
            _type: _type,
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct RequestTravelTime(i32);

impl ::std::convert::From<i32> for RequestTravelTime {
    fn from(x: i32) -> Self {
        RequestTravelTime(x)
    }
}

impl ::std::convert::From<RequestTravelTime> for i32 {
    fn from(x: RequestTravelTime) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for RequestTravelTime {
    type Target = i32;
    fn deref(&self) -> &i32 {
        &self.0
    }
}

impl ::std::ops::DerefMut for RequestTravelTime {
    fn deref_mut(&mut self) -> &mut i32 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct RequestUnionOnIntersection {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "search_ids")]
    pub search_ids: Vec<String>,

}

impl RequestUnionOnIntersection {
    pub fn new(id: String, search_ids: Vec<String>, ) -> RequestUnionOnIntersection {
        RequestUnionOnIntersection {
            id: id,
            search_ids: search_ids,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseBoundingBox {
    #[serde(rename = "envelope")]
    pub envelope: models::ResponseBox,

    #[serde(rename = "boxes")]
    pub boxes: Vec<models::ResponseBox>,

}

impl ResponseBoundingBox {
    pub fn new(envelope: models::ResponseBox, boxes: Vec<models::ResponseBox>, ) -> ResponseBoundingBox {
        ResponseBoundingBox {
            envelope: envelope,
            boxes: boxes,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseBox {
    #[serde(rename = "min_lat")]
    pub min_lat: f64,

    #[serde(rename = "max_lat")]
    pub max_lat: f64,

    #[serde(rename = "min_lng")]
    pub min_lng: f64,

    #[serde(rename = "max_lng")]
    pub max_lng: f64,

}

impl ResponseBox {
    pub fn new(min_lat: f64, max_lat: f64, min_lng: f64, max_lng: f64, ) -> ResponseBox {
        ResponseBox {
            min_lat: min_lat,
            max_lat: max_lat,
            min_lng: min_lng,
            max_lng: max_lng,
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct ResponseDistance(i32);

impl ::std::convert::From<i32> for ResponseDistance {
    fn from(x: i32) -> Self {
        ResponseDistance(x)
    }
}

impl ::std::convert::From<ResponseDistance> for i32 {
    fn from(x: ResponseDistance) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for ResponseDistance {
    type Target = i32;
    fn deref(&self) -> &i32 {
        &self.0
    }
}

impl ::std::ops::DerefMut for ResponseDistance {
    fn deref_mut(&mut self) -> &mut i32 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseDistanceBreakdownItem {
    #[serde(rename = "mode")]
    pub mode: models::ResponseTransportationMode,

    #[serde(rename = "distance")]
    pub distance: i32,

}

impl ResponseDistanceBreakdownItem {
    pub fn new(mode: models::ResponseTransportationMode, distance: i32, ) -> ResponseDistanceBreakdownItem {
        ResponseDistanceBreakdownItem {
            mode: mode,
            distance: distance,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseError {
    #[serde(rename = "http_status")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub http_status: Option<i32>,

    #[serde(rename = "error_code")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub error_code: Option<i32>,

    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "documentation_link")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub documentation_link: Option<String>,

    #[serde(rename = "additional_info")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub additional_info: Option<HashMap<String, Vec<String>>>,

}

impl ResponseError {
    pub fn new() -> ResponseError {
        ResponseError {
            http_status: None,
            error_code: None,
            description: None,
            documentation_link: None,
            additional_info: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseFareTicket {
    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "type")]
    pub _type: String,

    #[serde(rename = "price")]
    pub price: f64,

    #[serde(rename = "currency")]
    pub currency: String,

}

impl ResponseFareTicket {
    pub fn new(_type: String, price: f64, currency: String, ) -> ResponseFareTicket {
        ResponseFareTicket {
            _type: _type,
            price: price,
            currency: currency,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseFares {
    #[serde(rename = "breakdown")]
    pub breakdown: Vec<models::ResponseFaresBreakdownItem>,

    #[serde(rename = "tickets_total")]
    pub tickets_total: Vec<models::ResponseFareTicket>,

}

impl ResponseFares {
    pub fn new(breakdown: Vec<models::ResponseFaresBreakdownItem>, tickets_total: Vec<models::ResponseFareTicket>, ) -> ResponseFares {
        ResponseFares {
            breakdown: breakdown,
            tickets_total: tickets_total,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseFaresBreakdownItem {
    #[serde(rename = "modes")]
    pub modes: Vec<models::ResponseTransportationMode>,

    #[serde(rename = "route_part_ids")]
    pub route_part_ids: Vec<i32>,

    #[serde(rename = "tickets")]
    pub tickets: Vec<models::ResponseFareTicket>,

}

impl ResponseFaresBreakdownItem {
    pub fn new(modes: Vec<models::ResponseTransportationMode>, route_part_ids: Vec<i32>, tickets: Vec<models::ResponseFareTicket>, ) -> ResponseFaresBreakdownItem {
        ResponseFaresBreakdownItem {
            modes: modes,
            route_part_ids: route_part_ids,
            tickets: tickets,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseFaresFast {
    #[serde(rename = "tickets_total")]
    pub tickets_total: Vec<models::ResponseFareTicket>,

}

impl ResponseFaresFast {
    pub fn new(tickets_total: Vec<models::ResponseFareTicket>, ) -> ResponseFaresFast {
        ResponseFaresFast {
            tickets_total: tickets_total,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseGeocoding {
    #[serde(rename = "type")]
    pub _type: String,

    #[serde(rename = "features")]
    pub features: Vec<models::ResponseGeocodingGeoJsonFeature>,

}

impl ResponseGeocoding {
    pub fn new(_type: String, features: Vec<models::ResponseGeocodingGeoJsonFeature>, ) -> ResponseGeocoding {
        ResponseGeocoding {
            _type: _type,
            features: features,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseGeocodingGeoJsonFeature {
    #[serde(rename = "type")]
    pub _type: String,

    #[serde(rename = "geometry")]
    pub geometry: models::ResponseGeocodingGeometry,

    #[serde(rename = "properties")]
    pub properties: models::ResponseGeocodingProperties,

}

impl ResponseGeocodingGeoJsonFeature {
    pub fn new(_type: String, geometry: models::ResponseGeocodingGeometry, properties: models::ResponseGeocodingProperties, ) -> ResponseGeocodingGeoJsonFeature {
        ResponseGeocodingGeoJsonFeature {
            _type: _type,
            geometry: geometry,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseGeocodingGeometry {
    #[serde(rename = "type")]
    pub _type: String,

    #[serde(rename = "coordinates")]
    pub coordinates: Vec<f64>,

}

impl ResponseGeocodingGeometry {
    pub fn new(_type: String, coordinates: Vec<f64>, ) -> ResponseGeocodingGeometry {
        ResponseGeocodingGeometry {
            _type: _type,
            coordinates: coordinates,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseGeocodingProperties {
    #[serde(rename = "name")]
    pub name: String,

    #[serde(rename = "label")]
    pub label: String,

    #[serde(rename = "score")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub score: Option<f64>,

    #[serde(rename = "house_number")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub house_number: Option<String>,

    #[serde(rename = "street")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub street: Option<String>,

    #[serde(rename = "region")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub region: Option<String>,

    #[serde(rename = "region_code")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub region_code: Option<String>,

    #[serde(rename = "neighbourhood")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub neighbourhood: Option<String>,

    #[serde(rename = "county")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub county: Option<String>,

    #[serde(rename = "macroregion")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub macroregion: Option<String>,

    #[serde(rename = "city")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub city: Option<String>,

    #[serde(rename = "country")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub country: Option<String>,

    #[serde(rename = "country_code")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub country_code: Option<String>,

    #[serde(rename = "continent")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub continent: Option<String>,

    #[serde(rename = "postcode")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub postcode: Option<String>,

    #[serde(rename = "features")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub features: Option<models::ResponseMapInfoFeatures>,

}

impl ResponseGeocodingProperties {
    pub fn new(name: String, label: String, ) -> ResponseGeocodingProperties {
        ResponseGeocodingProperties {
            name: name,
            label: label,
            score: None,
            house_number: None,
            street: None,
            region: None,
            region_code: None,
            neighbourhood: None,
            county: None,
            macroregion: None,
            city: None,
            country: None,
            country_code: None,
            continent: None,
            postcode: None,
            features: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct ResponseLocalTime(String);

impl ::std::convert::From<String> for ResponseLocalTime {
    fn from(x: String) -> Self {
        ResponseLocalTime(x)
    }
}

impl ::std::convert::From<ResponseLocalTime> for String {
    fn from(x: ResponseLocalTime) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for ResponseLocalTime {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl ::std::ops::DerefMut for ResponseLocalTime {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct ResponseLocationId(String);

impl ::std::convert::From<String> for ResponseLocationId {
    fn from(x: String) -> Self {
        ResponseLocationId(x)
    }
}

impl ::std::convert::From<ResponseLocationId> for String {
    fn from(x: ResponseLocationId) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for ResponseLocationId {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl ::std::ops::DerefMut for ResponseLocationId {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseMapInfo {
    #[serde(rename = "maps")]
    pub maps: Vec<models::ResponseMapInfoMap>,

}

impl ResponseMapInfo {
    pub fn new(maps: Vec<models::ResponseMapInfoMap>, ) -> ResponseMapInfo {
        ResponseMapInfo {
            maps: maps,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseMapInfoFeatures {
    #[serde(rename = "public_transport")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub public_transport: Option<models::ResponseMapInfoFeaturesPublicTransport>,

    #[serde(rename = "fares")]
    pub fares: bool,

    #[serde(rename = "postcodes")]
    pub postcodes: bool,

}

impl ResponseMapInfoFeatures {
    pub fn new(fares: bool, postcodes: bool, ) -> ResponseMapInfoFeatures {
        ResponseMapInfoFeatures {
            public_transport: None,
            fares: fares,
            postcodes: postcodes,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseMapInfoFeaturesPublicTransport {
    #[serde(rename = "date_start")]
    pub date_start: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "date_end")]
    pub date_end: chrono::DateTime<chrono::Utc>,

}

impl ResponseMapInfoFeaturesPublicTransport {
    pub fn new(date_start: chrono::DateTime<chrono::Utc>, date_end: chrono::DateTime<chrono::Utc>, ) -> ResponseMapInfoFeaturesPublicTransport {
        ResponseMapInfoFeaturesPublicTransport {
            date_start: date_start,
            date_end: date_end,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseMapInfoMap {
    #[serde(rename = "name")]
    pub name: String,

    #[serde(rename = "features")]
    pub features: models::ResponseMapInfoFeatures,

}

impl ResponseMapInfoMap {
    pub fn new(name: String, features: models::ResponseMapInfoFeatures, ) -> ResponseMapInfoMap {
        ResponseMapInfoMap {
            name: name,
            features: features,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseRoute {
    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime<chrono::Utc>,

    #[serde(rename = "parts")]
    pub parts: Vec<models::ResponseRoutePart>,

}

impl ResponseRoute {
    pub fn new(departure_time: chrono::DateTime<chrono::Utc>, arrival_time: chrono::DateTime<chrono::Utc>, parts: Vec<models::ResponseRoutePart>, ) -> ResponseRoute {
        ResponseRoute {
            departure_time: departure_time,
            arrival_time: arrival_time,
            parts: parts,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseRoutePart {
    #[serde(rename = "id")]
    pub id: String,

    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "type")]
    pub _type: String,

    #[serde(rename = "mode")]
    pub mode: models::ResponseTransportationMode,

    #[serde(rename = "directions")]
    pub directions: String,

    #[serde(rename = "distance")]
    pub distance: i32,

    #[serde(rename = "travel_time")]
    pub travel_time: i32,

    #[serde(rename = "coords")]
    pub coords: Vec<models::Coords>,

    #[serde(rename = "direction")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub direction: Option<String>,

    #[serde(rename = "road")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub road: Option<String>,

    #[serde(rename = "turn")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub turn: Option<String>,

    #[serde(rename = "line")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub line: Option<String>,

    #[serde(rename = "departure_station")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub departure_station: Option<String>,

    #[serde(rename = "arrival_station")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub arrival_station: Option<String>,

    #[serde(rename = "departs_at")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub departs_at: Option<String>,

    #[serde(rename = "arrives_at")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub arrives_at: Option<String>,

    #[serde(rename = "num_stops")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub num_stops: Option<i32>,

}

impl ResponseRoutePart {
    pub fn new(id: String, _type: String, mode: models::ResponseTransportationMode, directions: String, distance: i32, travel_time: i32, coords: Vec<models::Coords>, ) -> ResponseRoutePart {
        ResponseRoutePart {
            id: id,
            _type: _type,
            mode: mode,
            directions: directions,
            distance: distance,
            travel_time: travel_time,
            coords: coords,
            direction: None,
            road: None,
            turn: None,
            line: None,
            departure_station: None,
            arrival_station: None,
            departs_at: None,
            arrives_at: None,
            num_stops: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseRoutes {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseRoutesResult>,

}

impl ResponseRoutes {
    pub fn new(results: Vec<models::ResponseRoutesResult>, ) -> ResponseRoutes {
        ResponseRoutes {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseRoutesLocation {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "properties")]
    pub properties: Vec<models::ResponseRoutesProperties>,

}

impl ResponseRoutesLocation {
    pub fn new(id: String, properties: Vec<models::ResponseRoutesProperties>, ) -> ResponseRoutesLocation {
        ResponseRoutesLocation {
            id: id,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseRoutesProperties {
    #[serde(rename = "travel_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time: Option<i32>,

    #[serde(rename = "distance")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub distance: Option<i32>,

    #[serde(rename = "fares")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub fares: Option<models::ResponseFares>,

    #[serde(rename = "route")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub route: Option<models::ResponseRoute>,

}

impl ResponseRoutesProperties {
    pub fn new() -> ResponseRoutesProperties {
        ResponseRoutesProperties {
            travel_time: None,
            distance: None,
            fares: None,
            route: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseRoutesResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "locations")]
    pub locations: Vec<models::ResponseRoutesLocation>,

    #[serde(rename = "unreachable")]
    pub unreachable: Vec<String>,

}

impl ResponseRoutesResult {
    pub fn new(search_id: String, locations: Vec<models::ResponseRoutesLocation>, unreachable: Vec<String>, ) -> ResponseRoutesResult {
        ResponseRoutesResult {
            search_id: search_id,
            locations: locations,
            unreachable: unreachable,
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct ResponseSearchId(String);

impl ::std::convert::From<String> for ResponseSearchId {
    fn from(x: String) -> Self {
        ResponseSearchId(x)
    }
}

impl ::std::convert::From<ResponseSearchId> for String {
    fn from(x: ResponseSearchId) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for ResponseSearchId {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl ::std::ops::DerefMut for ResponseSearchId {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseShape {
    #[serde(rename = "shell")]
    pub shell: Vec<models::Coords>,

    #[serde(rename = "holes")]
    pub holes: Vec<Vec<models::Coords>>,

}

impl ResponseShape {
    pub fn new(shell: Vec<models::Coords>, holes: Vec<Vec<models::Coords>>, ) -> ResponseShape {
        ResponseShape {
            shell: shell,
            holes: holes,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseSupportedLocation {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "map_name")]
    pub map_name: String,

}

impl ResponseSupportedLocation {
    pub fn new(id: String, map_name: String, ) -> ResponseSupportedLocation {
        ResponseSupportedLocation {
            id: id,
            map_name: map_name,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseSupportedLocations {
    #[serde(rename = "locations")]
    pub locations: Vec<models::ResponseSupportedLocation>,

    #[serde(rename = "unsupported_locations")]
    pub unsupported_locations: Vec<String>,

}

impl ResponseSupportedLocations {
    pub fn new(locations: Vec<models::ResponseSupportedLocation>, unsupported_locations: Vec<String>, ) -> ResponseSupportedLocations {
        ResponseSupportedLocations {
            locations: locations,
            unsupported_locations: unsupported_locations,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilter {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseTimeFilterResult>,

}

impl ResponseTimeFilter {
    pub fn new(results: Vec<models::ResponseTimeFilterResult>, ) -> ResponseTimeFilter {
        ResponseTimeFilter {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterFast {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseTimeFilterFastResult>,

}

impl ResponseTimeFilterFast {
    pub fn new(results: Vec<models::ResponseTimeFilterFastResult>, ) -> ResponseTimeFilterFast {
        ResponseTimeFilterFast {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterFastLocation {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "properties")]
    pub properties: Vec<models::ResponseTimeFilterFastProperties>,

}

impl ResponseTimeFilterFastLocation {
    pub fn new(id: String, properties: Vec<models::ResponseTimeFilterFastProperties>, ) -> ResponseTimeFilterFastLocation {
        ResponseTimeFilterFastLocation {
            id: id,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterFastProperties {
    #[serde(rename = "travel_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time: Option<i32>,

    #[serde(rename = "fares")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub fares: Option<models::ResponseFaresFast>,

}

impl ResponseTimeFilterFastProperties {
    pub fn new() -> ResponseTimeFilterFastProperties {
        ResponseTimeFilterFastProperties {
            travel_time: None,
            fares: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterFastResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "locations")]
    pub locations: Vec<models::ResponseTimeFilterFastLocation>,

    #[serde(rename = "unreachable")]
    pub unreachable: Vec<String>,

}

impl ResponseTimeFilterFastResult {
    pub fn new(search_id: String, locations: Vec<models::ResponseTimeFilterFastLocation>, unreachable: Vec<String>, ) -> ResponseTimeFilterFastResult {
        ResponseTimeFilterFastResult {
            search_id: search_id,
            locations: locations,
            unreachable: unreachable,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterLocation {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "properties")]
    pub properties: Vec<models::ResponseTimeFilterProperties>,

}

impl ResponseTimeFilterLocation {
    pub fn new(id: String, properties: Vec<models::ResponseTimeFilterProperties>, ) -> ResponseTimeFilterLocation {
        ResponseTimeFilterLocation {
            id: id,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcode {
    #[serde(rename = "code")]
    pub code: String,

    #[serde(rename = "properties")]
    pub properties: Vec<models::ResponseTimeFilterPostcodesProperties>,

}

impl ResponseTimeFilterPostcode {
    pub fn new(code: String, properties: Vec<models::ResponseTimeFilterPostcodesProperties>, ) -> ResponseTimeFilterPostcode {
        ResponseTimeFilterPostcode {
            code: code,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodeDistrict {
    #[serde(rename = "code")]
    pub code: String,

    #[serde(rename = "properties")]
    pub properties: models::ResponseTimeFilterPostcodeDistrictProperties,

}

impl ResponseTimeFilterPostcodeDistrict {
    pub fn new(code: String, properties: models::ResponseTimeFilterPostcodeDistrictProperties, ) -> ResponseTimeFilterPostcodeDistrict {
        ResponseTimeFilterPostcodeDistrict {
            code: code,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodeDistrictProperties {
    #[serde(rename = "travel_time_reachable")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time_reachable: Option<models::ResponseTravelTimeStatistics>,

    #[serde(rename = "travel_time_all")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time_all: Option<models::ResponseTravelTimeStatistics>,

    #[serde(rename = "coverage")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub coverage: Option<f64>,

}

impl ResponseTimeFilterPostcodeDistrictProperties {
    pub fn new() -> ResponseTimeFilterPostcodeDistrictProperties {
        ResponseTimeFilterPostcodeDistrictProperties {
            travel_time_reachable: None,
            travel_time_all: None,
            coverage: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodeDistricts {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseTimeFilterPostcodeDistrictsResult>,

}

impl ResponseTimeFilterPostcodeDistricts {
    pub fn new(results: Vec<models::ResponseTimeFilterPostcodeDistrictsResult>, ) -> ResponseTimeFilterPostcodeDistricts {
        ResponseTimeFilterPostcodeDistricts {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodeDistrictsResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "districts")]
    pub districts: Vec<models::ResponseTimeFilterPostcodeDistrict>,

}

impl ResponseTimeFilterPostcodeDistrictsResult {
    pub fn new(search_id: String, districts: Vec<models::ResponseTimeFilterPostcodeDistrict>, ) -> ResponseTimeFilterPostcodeDistrictsResult {
        ResponseTimeFilterPostcodeDistrictsResult {
            search_id: search_id,
            districts: districts,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodeSector {
    #[serde(rename = "code")]
    pub code: String,

    #[serde(rename = "properties")]
    pub properties: models::ResponseTimeFilterPostcodeSectorProperties,

}

impl ResponseTimeFilterPostcodeSector {
    pub fn new(code: String, properties: models::ResponseTimeFilterPostcodeSectorProperties, ) -> ResponseTimeFilterPostcodeSector {
        ResponseTimeFilterPostcodeSector {
            code: code,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodeSectorProperties {
    #[serde(rename = "travel_time_reachable")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time_reachable: Option<models::ResponseTravelTimeStatistics>,

    #[serde(rename = "travel_time_all")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time_all: Option<models::ResponseTravelTimeStatistics>,

    #[serde(rename = "coverage")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub coverage: Option<f64>,

}

impl ResponseTimeFilterPostcodeSectorProperties {
    pub fn new() -> ResponseTimeFilterPostcodeSectorProperties {
        ResponseTimeFilterPostcodeSectorProperties {
            travel_time_reachable: None,
            travel_time_all: None,
            coverage: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodeSectors {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseTimeFilterPostcodeSectorsResult>,

}

impl ResponseTimeFilterPostcodeSectors {
    pub fn new(results: Vec<models::ResponseTimeFilterPostcodeSectorsResult>, ) -> ResponseTimeFilterPostcodeSectors {
        ResponseTimeFilterPostcodeSectors {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodeSectorsResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "sectors")]
    pub sectors: Vec<models::ResponseTimeFilterPostcodeSector>,

}

impl ResponseTimeFilterPostcodeSectorsResult {
    pub fn new(search_id: String, sectors: Vec<models::ResponseTimeFilterPostcodeSector>, ) -> ResponseTimeFilterPostcodeSectorsResult {
        ResponseTimeFilterPostcodeSectorsResult {
            search_id: search_id,
            sectors: sectors,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodes {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseTimeFilterPostcodesResult>,

}

impl ResponseTimeFilterPostcodes {
    pub fn new(results: Vec<models::ResponseTimeFilterPostcodesResult>, ) -> ResponseTimeFilterPostcodes {
        ResponseTimeFilterPostcodes {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodesProperties {
    #[serde(rename = "travel_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time: Option<i32>,

    #[serde(rename = "distance")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub distance: Option<i32>,

}

impl ResponseTimeFilterPostcodesProperties {
    pub fn new() -> ResponseTimeFilterPostcodesProperties {
        ResponseTimeFilterPostcodesProperties {
            travel_time: None,
            distance: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterPostcodesResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "postcodes")]
    pub postcodes: Vec<models::ResponseTimeFilterPostcode>,

}

impl ResponseTimeFilterPostcodesResult {
    pub fn new(search_id: String, postcodes: Vec<models::ResponseTimeFilterPostcode>, ) -> ResponseTimeFilterPostcodesResult {
        ResponseTimeFilterPostcodesResult {
            search_id: search_id,
            postcodes: postcodes,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterProperties {
    #[serde(rename = "travel_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time: Option<i32>,

    #[serde(rename = "distance")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub distance: Option<i32>,

    #[serde(rename = "distance_breakdown")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub distance_breakdown: Option<Vec<models::ResponseDistanceBreakdownItem>>,

    #[serde(rename = "fares")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub fares: Option<models::ResponseFares>,

    #[serde(rename = "route")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub route: Option<models::ResponseRoute>,

}

impl ResponseTimeFilterProperties {
    pub fn new() -> ResponseTimeFilterProperties {
        ResponseTimeFilterProperties {
            travel_time: None,
            distance: None,
            distance_breakdown: None,
            fares: None,
            route: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeFilterResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "locations")]
    pub locations: Vec<models::ResponseTimeFilterLocation>,

    #[serde(rename = "unreachable")]
    pub unreachable: Vec<String>,

}

impl ResponseTimeFilterResult {
    pub fn new(search_id: String, locations: Vec<models::ResponseTimeFilterLocation>, unreachable: Vec<String>, ) -> ResponseTimeFilterResult {
        ResponseTimeFilterResult {
            search_id: search_id,
            locations: locations,
            unreachable: unreachable,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeMap {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseTimeMapResult>,

}

impl ResponseTimeMap {
    pub fn new(results: Vec<models::ResponseTimeMapResult>, ) -> ResponseTimeMap {
        ResponseTimeMap {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeMapBoundingBoxes {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseTimeMapBoundingBoxesResult>,

}

impl ResponseTimeMapBoundingBoxes {
    pub fn new(results: Vec<models::ResponseTimeMapBoundingBoxesResult>, ) -> ResponseTimeMapBoundingBoxes {
        ResponseTimeMapBoundingBoxes {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeMapBoundingBoxesResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "bounding_boxes")]
    pub bounding_boxes: Vec<models::ResponseBoundingBox>,

    #[serde(rename = "properties")]
    pub properties: models::ResponseTimeMapProperties,

}

impl ResponseTimeMapBoundingBoxesResult {
    pub fn new(search_id: String, bounding_boxes: Vec<models::ResponseBoundingBox>, properties: models::ResponseTimeMapProperties, ) -> ResponseTimeMapBoundingBoxesResult {
        ResponseTimeMapBoundingBoxesResult {
            search_id: search_id,
            bounding_boxes: bounding_boxes,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeMapProperties {
    #[serde(rename = "is_only_walking")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub is_only_walking: Option<bool>,

}

impl ResponseTimeMapProperties {
    pub fn new() -> ResponseTimeMapProperties {
        ResponseTimeMapProperties {
            is_only_walking: None,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeMapResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "shapes")]
    pub shapes: Vec<models::ResponseShape>,

    #[serde(rename = "properties")]
    pub properties: models::ResponseTimeMapProperties,

}

impl ResponseTimeMapResult {
    pub fn new(search_id: String, shapes: Vec<models::ResponseShape>, properties: models::ResponseTimeMapProperties, ) -> ResponseTimeMapResult {
        ResponseTimeMapResult {
            search_id: search_id,
            shapes: shapes,
            properties: properties,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeMapWkt {
    #[serde(rename = "results")]
    pub results: Vec<models::ResponseTimeMapWktResult>,

}

impl ResponseTimeMapWkt {
    pub fn new(results: Vec<models::ResponseTimeMapWktResult>, ) -> ResponseTimeMapWkt {
        ResponseTimeMapWkt {
            results: results,
        }
    }
}

#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTimeMapWktResult {
    #[serde(rename = "search_id")]
    pub search_id: String,

    #[serde(rename = "shape")]
    pub shape: String,

    #[serde(rename = "properties")]
    pub properties: models::ResponseTimeMapProperties,

}

impl ResponseTimeMapWktResult {
    pub fn new(search_id: String, shape: String, properties: models::ResponseTimeMapProperties, ) -> ResponseTimeMapWktResult {
        ResponseTimeMapWktResult {
            search_id: search_id,
            shape: shape,
            properties: properties,
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, PartialOrd, Serialize, Deserialize, Eq, Ord)]
pub enum ResponseTransportationMode { 
    #[serde(rename = "car")]
    CAR,
    #[serde(rename = "parking")]
    PARKING,
    #[serde(rename = "boarding")]
    BOARDING,
    #[serde(rename = "walk")]
    WALK,
    #[serde(rename = "bike")]
    BIKE,
    #[serde(rename = "train")]
    TRAIN,
    #[serde(rename = "rail_national")]
    RAIL_NATIONAL,
    #[serde(rename = "rail_overground")]
    RAIL_OVERGROUND,
    #[serde(rename = "rail_underground")]
    RAIL_UNDERGROUND,
    #[serde(rename = "rail_dlr")]
    RAIL_DLR,
    #[serde(rename = "bus")]
    BUS,
    #[serde(rename = "cable_car")]
    CABLE_CAR,
    #[serde(rename = "plane")]
    PLANE,
    #[serde(rename = "ferry")]
    FERRY,
    #[serde(rename = "coach")]
    COACH,
}

impl ::std::fmt::Display for ResponseTransportationMode {
    fn fmt(&self, f: &mut ::std::fmt::Formatter) -> ::std::fmt::Result {
        match *self { 
            ResponseTransportationMode::CAR => write!(f, "{}", "car"),
            ResponseTransportationMode::PARKING => write!(f, "{}", "parking"),
            ResponseTransportationMode::BOARDING => write!(f, "{}", "boarding"),
            ResponseTransportationMode::WALK => write!(f, "{}", "walk"),
            ResponseTransportationMode::BIKE => write!(f, "{}", "bike"),
            ResponseTransportationMode::TRAIN => write!(f, "{}", "train"),
            ResponseTransportationMode::RAIL_NATIONAL => write!(f, "{}", "rail_national"),
            ResponseTransportationMode::RAIL_OVERGROUND => write!(f, "{}", "rail_overground"),
            ResponseTransportationMode::RAIL_UNDERGROUND => write!(f, "{}", "rail_underground"),
            ResponseTransportationMode::RAIL_DLR => write!(f, "{}", "rail_dlr"),
            ResponseTransportationMode::BUS => write!(f, "{}", "bus"),
            ResponseTransportationMode::CABLE_CAR => write!(f, "{}", "cable_car"),
            ResponseTransportationMode::PLANE => write!(f, "{}", "plane"),
            ResponseTransportationMode::FERRY => write!(f, "{}", "ferry"),
            ResponseTransportationMode::COACH => write!(f, "{}", "coach"),
        }
    }
}

impl ::std::str::FromStr for ResponseTransportationMode {
    type Err = ();
    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "car" => Ok(ResponseTransportationMode::CAR),
            "parking" => Ok(ResponseTransportationMode::PARKING),
            "boarding" => Ok(ResponseTransportationMode::BOARDING),
            "walk" => Ok(ResponseTransportationMode::WALK),
            "bike" => Ok(ResponseTransportationMode::BIKE),
            "train" => Ok(ResponseTransportationMode::TRAIN),
            "rail_national" => Ok(ResponseTransportationMode::RAIL_NATIONAL),
            "rail_overground" => Ok(ResponseTransportationMode::RAIL_OVERGROUND),
            "rail_underground" => Ok(ResponseTransportationMode::RAIL_UNDERGROUND),
            "rail_dlr" => Ok(ResponseTransportationMode::RAIL_DLR),
            "bus" => Ok(ResponseTransportationMode::BUS),
            "cable_car" => Ok(ResponseTransportationMode::CABLE_CAR),
            "plane" => Ok(ResponseTransportationMode::PLANE),
            "ferry" => Ok(ResponseTransportationMode::FERRY),
            "coach" => Ok(ResponseTransportationMode::COACH),
            _ => Err(()),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct ResponseTravelTime(i32);

impl ::std::convert::From<i32> for ResponseTravelTime {
    fn from(x: i32) -> Self {
        ResponseTravelTime(x)
    }
}

impl ::std::convert::From<ResponseTravelTime> for i32 {
    fn from(x: ResponseTravelTime) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for ResponseTravelTime {
    type Target = i32;
    fn deref(&self) -> &i32 {
        &self.0
    }
}

impl ::std::ops::DerefMut for ResponseTravelTime {
    fn deref_mut(&mut self) -> &mut i32 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, Serialize, Deserialize)]
pub struct ResponseTravelTimeStatistics {
    #[serde(rename = "min")]
    pub min: i32,

    #[serde(rename = "max")]
    pub max: i32,

    #[serde(rename = "mean")]
    pub mean: i32,

    #[serde(rename = "median")]
    pub median: i32,

}

impl ResponseTravelTimeStatistics {
    pub fn new(min: i32, max: i32, mean: i32, median: i32, ) -> ResponseTravelTimeStatistics {
        ResponseTravelTimeStatistics {
            min: min,
            max: max,
            mean: mean,
            median: median,
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, Serialize, Deserialize)]

pub struct ResponseWktShape(String);

impl ::std::convert::From<String> for ResponseWktShape {
    fn from(x: String) -> Self {
        ResponseWktShape(x)
    }
}

impl ::std::convert::From<ResponseWktShape> for String {
    fn from(x: ResponseWktShape) -> Self {
        x.0
    }
}

impl ::std::ops::Deref for ResponseWktShape {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl ::std::ops::DerefMut for ResponseWktShape {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}

