#![allow(unused_qualifications)]

use crate::models;
#[cfg(any(feature = "client", feature = "server"))]
use crate::header;

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the Coords value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for Coords {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("lat".to_string());
        params.push(self.lat.to_string());


        params.push("lng".to_string());
        params.push(self.lng.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a Coords value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for Coords {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub lat: Vec<f64>,
            pub lng: Vec<f64>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing Coords".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "lat" => intermediate_rep.lat.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "lng" => intermediate_rep.lng.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing Coords".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(Coords {
            lat: intermediate_rep.lat.into_iter().next().ok_or("lat missing in Coords".to_string())?,
            lng: intermediate_rep.lng.into_iter().next().ok_or("lng missing in Coords".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<Coords> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<Coords>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<Coords>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for Coords - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<Coords> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <Coords as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into Coords - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
pub enum RequestArrivalTimePeriod {
    #[serde(rename = "weekday_morning")]
    WEEKDAY_MORNING,
}

impl std::fmt::Display for RequestArrivalTimePeriod {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            RequestArrivalTimePeriod::WEEKDAY_MORNING => write!(f, "{}", "weekday_morning"),
        }
    }
}

impl std::str::FromStr for RequestArrivalTimePeriod {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "weekday_morning" => std::result::Result::Ok(RequestArrivalTimePeriod::WEEKDAY_MORNING),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestDepartureArrivalLocationOne(String);

impl std::convert::From<String> for RequestDepartureArrivalLocationOne {
    fn from(x: String) -> Self {
        RequestDepartureArrivalLocationOne(x)
    }
}

impl std::string::ToString for RequestDepartureArrivalLocationOne {
    fn to_string(&self) -> String {
       self.0.to_string()
    }
}

impl std::str::FromStr for RequestDepartureArrivalLocationOne {
    type Err = std::string::ParseError;
    fn from_str(x: &str) -> std::result::Result<Self, Self::Err> {
        std::result::Result::Ok(RequestDepartureArrivalLocationOne(x.to_string()))
    }
}

impl std::convert::From<RequestDepartureArrivalLocationOne> for String {
    fn from(x: RequestDepartureArrivalLocationOne) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestDepartureArrivalLocationOne {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl std::ops::DerefMut for RequestDepartureArrivalLocationOne {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestDepartureArrivalTime(chrono::DateTime::<chrono::Utc>);

impl std::convert::From<chrono::DateTime::<chrono::Utc>> for RequestDepartureArrivalTime {
    fn from(x: chrono::DateTime::<chrono::Utc>) -> Self {
        RequestDepartureArrivalTime(x)
    }
}

impl std::convert::From<RequestDepartureArrivalTime> for chrono::DateTime::<chrono::Utc> {
    fn from(x: RequestDepartureArrivalTime) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestDepartureArrivalTime {
    type Target = chrono::DateTime::<chrono::Utc>;
    fn deref(&self) -> &chrono::DateTime::<chrono::Utc> {
        &self.0
    }
}

impl std::ops::DerefMut for RequestDepartureArrivalTime {
    fn deref_mut(&mut self) -> &mut chrono::DateTime::<chrono::Utc> {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestLevelOfDetail {
    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "scale_type")]
    pub scale_type: String,

    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "level")]
    pub level: String,

}

impl RequestLevelOfDetail {
    pub fn new(scale_type: String, level: String, ) -> RequestLevelOfDetail {
        RequestLevelOfDetail {
            scale_type: scale_type,
            level: level,
        }
    }
}

/// Converts the RequestLevelOfDetail value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestLevelOfDetail {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("scale_type".to_string());
        params.push(self.scale_type.to_string());


        params.push("level".to_string());
        params.push(self.level.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestLevelOfDetail value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestLevelOfDetail {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub scale_type: Vec<String>,
            pub level: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestLevelOfDetail".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "scale_type" => intermediate_rep.scale_type.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "level" => intermediate_rep.level.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestLevelOfDetail".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestLevelOfDetail {
            scale_type: intermediate_rep.scale_type.into_iter().next().ok_or("scale_type missing in RequestLevelOfDetail".to_string())?,
            level: intermediate_rep.level.into_iter().next().ok_or("level missing in RequestLevelOfDetail".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestLevelOfDetail> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestLevelOfDetail>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestLevelOfDetail>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestLevelOfDetail - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestLevelOfDetail> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestLevelOfDetail as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestLevelOfDetail - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestLocation value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestLocation {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping coords in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestLocation value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestLocation {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub coords: Vec<models::Coords>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestLocation".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "coords" => intermediate_rep.coords.push(<models::Coords as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestLocation".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestLocation {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestLocation".to_string())?,
            coords: intermediate_rep.coords.into_iter().next().ok_or("coords missing in RequestLocation".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestLocation> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestLocation>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestLocation>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestLocation - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestLocation> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestLocation as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestLocation - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestLocationId(String);

impl std::convert::From<String> for RequestLocationId {
    fn from(x: String) -> Self {
        RequestLocationId(x)
    }
}

impl std::string::ToString for RequestLocationId {
    fn to_string(&self) -> String {
       self.0.to_string()
    }
}

impl std::str::FromStr for RequestLocationId {
    type Err = std::string::ParseError;
    fn from_str(x: &str) -> std::result::Result<Self, Self::Err> {
        std::result::Result::Ok(RequestLocationId(x.to_string()))
    }
}

impl std::convert::From<RequestLocationId> for String {
    fn from(x: RequestLocationId) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestLocationId {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl std::ops::DerefMut for RequestLocationId {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestRangeEnabled(bool);

impl std::convert::From<bool> for RequestRangeEnabled {
    fn from(x: bool) -> Self {
        RequestRangeEnabled(x)
    }
}

impl std::convert::From<RequestRangeEnabled> for bool {
    fn from(x: RequestRangeEnabled) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestRangeEnabled {
    type Target = bool;
    fn deref(&self) -> &bool {
        &self.0
    }
}

impl std::ops::DerefMut for RequestRangeEnabled {
    fn deref_mut(&mut self) -> &mut bool {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestRangeFull {
    #[serde(rename = "enabled")]
    pub enabled: bool,

    #[serde(rename = "max_results")]
    pub max_results: u8,

    #[serde(rename = "width")]
    pub width: u16,

}

impl RequestRangeFull {
    pub fn new(enabled: bool, max_results: u8, width: u16, ) -> RequestRangeFull {
        RequestRangeFull {
            enabled: enabled,
            max_results: max_results,
            width: width,
        }
    }
}

/// Converts the RequestRangeFull value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestRangeFull {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("enabled".to_string());
        params.push(self.enabled.to_string());


        params.push("max_results".to_string());
        params.push(self.max_results.to_string());


        params.push("width".to_string());
        params.push(self.width.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestRangeFull value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestRangeFull {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub enabled: Vec<bool>,
            pub max_results: Vec<u8>,
            pub width: Vec<u16>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestRangeFull".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "enabled" => intermediate_rep.enabled.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "max_results" => intermediate_rep.max_results.push(<u8 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "width" => intermediate_rep.width.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestRangeFull".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestRangeFull {
            enabled: intermediate_rep.enabled.into_iter().next().ok_or("enabled missing in RequestRangeFull".to_string())?,
            max_results: intermediate_rep.max_results.into_iter().next().ok_or("max_results missing in RequestRangeFull".to_string())?,
            width: intermediate_rep.width.into_iter().next().ok_or("width missing in RequestRangeFull".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestRangeFull> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestRangeFull>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestRangeFull>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestRangeFull - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestRangeFull> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestRangeFull as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestRangeFull - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestRangeNoMaxResults {
    #[serde(rename = "enabled")]
    pub enabled: bool,

    #[serde(rename = "width")]
    pub width: u16,

}

impl RequestRangeNoMaxResults {
    pub fn new(enabled: bool, width: u16, ) -> RequestRangeNoMaxResults {
        RequestRangeNoMaxResults {
            enabled: enabled,
            width: width,
        }
    }
}

/// Converts the RequestRangeNoMaxResults value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestRangeNoMaxResults {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("enabled".to_string());
        params.push(self.enabled.to_string());


        params.push("width".to_string());
        params.push(self.width.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestRangeNoMaxResults value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestRangeNoMaxResults {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub enabled: Vec<bool>,
            pub width: Vec<u16>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestRangeNoMaxResults".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "enabled" => intermediate_rep.enabled.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "width" => intermediate_rep.width.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestRangeNoMaxResults".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestRangeNoMaxResults {
            enabled: intermediate_rep.enabled.into_iter().next().ok_or("enabled missing in RequestRangeNoMaxResults".to_string())?,
            width: intermediate_rep.width.into_iter().next().ok_or("width missing in RequestRangeNoMaxResults".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestRangeNoMaxResults> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestRangeNoMaxResults>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestRangeNoMaxResults>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestRangeNoMaxResults - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestRangeNoMaxResults> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestRangeNoMaxResults as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestRangeNoMaxResults - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestRangeWidth(i32);

impl std::convert::From<i32> for RequestRangeWidth {
    fn from(x: i32) -> Self {
        RequestRangeWidth(x)
    }
}

impl std::convert::From<RequestRangeWidth> for i32 {
    fn from(x: RequestRangeWidth) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestRangeWidth {
    type Target = i32;
    fn deref(&self) -> &i32 {
        &self.0
    }
}

impl std::ops::DerefMut for RequestRangeWidth {
    fn deref_mut(&mut self) -> &mut i32 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestRoutes value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestRoutes {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping locations in query parameter serialization

        // Skipping departure_searches in query parameter serialization

        // Skipping arrival_searches in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestRoutes value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestRoutes {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub locations: Vec<Vec<models::RequestLocation>>,
            pub departure_searches: Vec<Vec<models::RequestRoutesDepartureSearch>>,
            pub arrival_searches: Vec<Vec<models::RequestRoutesArrivalSearch>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestRoutes".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "locations" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestRoutes".to_string()),
                    "departure_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestRoutes".to_string()),
                    "arrival_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestRoutes".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestRoutes".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestRoutes {
            locations: intermediate_rep.locations.into_iter().next().ok_or("locations missing in RequestRoutes".to_string())?,
            departure_searches: intermediate_rep.departure_searches.into_iter().next(),
            arrival_searches: intermediate_rep.arrival_searches.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestRoutes> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestRoutes>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestRoutes>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestRoutes - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestRoutes> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestRoutes as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestRoutes - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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
    pub arrival_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestRoutesProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestRoutesArrivalSearch {
    pub fn new(id: String, departure_location_ids: Vec<String>, arrival_location_id: String, transportation: models::RequestTransportation, arrival_time: chrono::DateTime::<chrono::Utc>, properties: Vec<models::RequestRoutesProperty>, ) -> RequestRoutesArrivalSearch {
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

/// Converts the RequestRoutesArrivalSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestRoutesArrivalSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("departure_location_ids".to_string());
        params.push(self.departure_location_ids.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());


        params.push("arrival_location_id".to_string());
        params.push(self.arrival_location_id.to_string());

        // Skipping transportation in query parameter serialization

        // Skipping arrival_time in query parameter serialization

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestRoutesArrivalSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestRoutesArrivalSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub departure_location_ids: Vec<Vec<String>>,
            pub arrival_location_id: Vec<String>,
            pub transportation: Vec<models::RequestTransportation>,
            pub arrival_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub properties: Vec<Vec<models::RequestRoutesProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestRoutesArrivalSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_location_ids" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestRoutesArrivalSearch".to_string()),
                    "arrival_location_id" => intermediate_rep.arrival_location_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time" => intermediate_rep.arrival_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestRoutesArrivalSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestRoutesArrivalSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestRoutesArrivalSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestRoutesArrivalSearch".to_string())?,
            departure_location_ids: intermediate_rep.departure_location_ids.into_iter().next().ok_or("departure_location_ids missing in RequestRoutesArrivalSearch".to_string())?,
            arrival_location_id: intermediate_rep.arrival_location_id.into_iter().next().ok_or("arrival_location_id missing in RequestRoutesArrivalSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestRoutesArrivalSearch".to_string())?,
            arrival_time: intermediate_rep.arrival_time.into_iter().next().ok_or("arrival_time missing in RequestRoutesArrivalSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestRoutesArrivalSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestRoutesArrivalSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestRoutesArrivalSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestRoutesArrivalSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestRoutesArrivalSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestRoutesArrivalSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestRoutesArrivalSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestRoutesArrivalSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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
    pub departure_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestRoutesProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestRoutesDepartureSearch {
    pub fn new(id: String, departure_location_id: String, arrival_location_ids: Vec<String>, transportation: models::RequestTransportation, departure_time: chrono::DateTime::<chrono::Utc>, properties: Vec<models::RequestRoutesProperty>, ) -> RequestRoutesDepartureSearch {
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

/// Converts the RequestRoutesDepartureSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestRoutesDepartureSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("departure_location_id".to_string());
        params.push(self.departure_location_id.to_string());


        params.push("arrival_location_ids".to_string());
        params.push(self.arrival_location_ids.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        // Skipping transportation in query parameter serialization

        // Skipping departure_time in query parameter serialization

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestRoutesDepartureSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestRoutesDepartureSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub departure_location_id: Vec<String>,
            pub arrival_location_ids: Vec<Vec<String>>,
            pub transportation: Vec<models::RequestTransportation>,
            pub departure_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub properties: Vec<Vec<models::RequestRoutesProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestRoutesDepartureSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_location_id" => intermediate_rep.departure_location_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_location_ids" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestRoutesDepartureSearch".to_string()),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_time" => intermediate_rep.departure_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestRoutesDepartureSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestRoutesDepartureSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestRoutesDepartureSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestRoutesDepartureSearch".to_string())?,
            departure_location_id: intermediate_rep.departure_location_id.into_iter().next().ok_or("departure_location_id missing in RequestRoutesDepartureSearch".to_string())?,
            arrival_location_ids: intermediate_rep.arrival_location_ids.into_iter().next().ok_or("arrival_location_ids missing in RequestRoutesDepartureSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestRoutesDepartureSearch".to_string())?,
            departure_time: intermediate_rep.departure_time.into_iter().next().ok_or("departure_time missing in RequestRoutesDepartureSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestRoutesDepartureSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestRoutesDepartureSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestRoutesDepartureSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestRoutesDepartureSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestRoutesDepartureSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestRoutesDepartureSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestRoutesDepartureSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestRoutesDepartureSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
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

impl std::fmt::Display for RequestRoutesProperty {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            RequestRoutesProperty::TRAVEL_TIME => write!(f, "{}", "travel_time"),
            RequestRoutesProperty::DISTANCE => write!(f, "{}", "distance"),
            RequestRoutesProperty::FARES => write!(f, "{}", "fares"),
            RequestRoutesProperty::ROUTE => write!(f, "{}", "route"),
        }
    }
}

impl std::str::FromStr for RequestRoutesProperty {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "travel_time" => std::result::Result::Ok(RequestRoutesProperty::TRAVEL_TIME),
            "distance" => std::result::Result::Ok(RequestRoutesProperty::DISTANCE),
            "fares" => std::result::Result::Ok(RequestRoutesProperty::FARES),
            "route" => std::result::Result::Ok(RequestRoutesProperty::ROUTE),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestSearchId(String);

impl std::convert::From<String> for RequestSearchId {
    fn from(x: String) -> Self {
        RequestSearchId(x)
    }
}

impl std::string::ToString for RequestSearchId {
    fn to_string(&self) -> String {
       self.0.to_string()
    }
}

impl std::str::FromStr for RequestSearchId {
    type Err = std::string::ParseError;
    fn from_str(x: &str) -> std::result::Result<Self, Self::Err> {
        std::result::Result::Ok(RequestSearchId(x.to_string()))
    }
}

impl std::convert::From<RequestSearchId> for String {
    fn from(x: RequestSearchId) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestSearchId {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl std::ops::DerefMut for RequestSearchId {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestSupportedLocations value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestSupportedLocations {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping locations in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestSupportedLocations value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestSupportedLocations {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub locations: Vec<Vec<models::RequestLocation>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestSupportedLocations".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "locations" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestSupportedLocations".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestSupportedLocations".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestSupportedLocations {
            locations: intermediate_rep.locations.into_iter().next().ok_or("locations missing in RequestSupportedLocations".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestSupportedLocations> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestSupportedLocations>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestSupportedLocations>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestSupportedLocations - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestSupportedLocations> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestSupportedLocations as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestSupportedLocations - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestTimeFilter value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilter {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping locations in query parameter serialization

        // Skipping departure_searches in query parameter serialization

        // Skipping arrival_searches in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilter value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilter {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub locations: Vec<Vec<models::RequestLocation>>,
            pub departure_searches: Vec<Vec<models::RequestTimeFilterDepartureSearch>>,
            pub arrival_searches: Vec<Vec<models::RequestTimeFilterArrivalSearch>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilter".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "locations" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilter".to_string()),
                    "departure_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilter".to_string()),
                    "arrival_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilter".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilter".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilter {
            locations: intermediate_rep.locations.into_iter().next().ok_or("locations missing in RequestTimeFilter".to_string())?,
            departure_searches: intermediate_rep.departure_searches.into_iter().next(),
            arrival_searches: intermediate_rep.arrival_searches.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilter> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilter>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilter>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilter - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilter> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilter as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilter - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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
    pub travel_time: u16,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterArrivalSearch {
    pub fn new(id: String, departure_location_ids: Vec<String>, arrival_location_id: String, transportation: models::RequestTransportation, travel_time: u16, arrival_time: chrono::DateTime::<chrono::Utc>, properties: Vec<models::RequestTimeFilterProperty>, ) -> RequestTimeFilterArrivalSearch {
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

/// Converts the RequestTimeFilterArrivalSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterArrivalSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("departure_location_ids".to_string());
        params.push(self.departure_location_ids.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());


        params.push("arrival_location_id".to_string());
        params.push(self.arrival_location_id.to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping arrival_time in query parameter serialization

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterArrivalSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterArrivalSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub departure_location_ids: Vec<Vec<String>>,
            pub arrival_location_id: Vec<String>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub arrival_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub properties: Vec<Vec<models::RequestTimeFilterProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterArrivalSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_location_ids" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterArrivalSearch".to_string()),
                    "arrival_location_id" => intermediate_rep.arrival_location_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time" => intermediate_rep.arrival_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterArrivalSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterArrivalSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterArrivalSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterArrivalSearch".to_string())?,
            departure_location_ids: intermediate_rep.departure_location_ids.into_iter().next().ok_or("departure_location_ids missing in RequestTimeFilterArrivalSearch".to_string())?,
            arrival_location_id: intermediate_rep.arrival_location_id.into_iter().next().ok_or("arrival_location_id missing in RequestTimeFilterArrivalSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterArrivalSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterArrivalSearch".to_string())?,
            arrival_time: intermediate_rep.arrival_time.into_iter().next().ok_or("arrival_time missing in RequestTimeFilterArrivalSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterArrivalSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterArrivalSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterArrivalSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterArrivalSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterArrivalSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterArrivalSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterArrivalSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterArrivalSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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
    pub travel_time: u16,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterDepartureSearch {
    pub fn new(id: String, departure_location_id: String, arrival_location_ids: Vec<String>, transportation: models::RequestTransportation, travel_time: u16, departure_time: chrono::DateTime::<chrono::Utc>, properties: Vec<models::RequestTimeFilterProperty>, ) -> RequestTimeFilterDepartureSearch {
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

/// Converts the RequestTimeFilterDepartureSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterDepartureSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("departure_location_id".to_string());
        params.push(self.departure_location_id.to_string());


        params.push("arrival_location_ids".to_string());
        params.push(self.arrival_location_ids.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping departure_time in query parameter serialization

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterDepartureSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterDepartureSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub departure_location_id: Vec<String>,
            pub arrival_location_ids: Vec<Vec<String>>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub departure_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub properties: Vec<Vec<models::RequestTimeFilterProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterDepartureSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_location_id" => intermediate_rep.departure_location_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_location_ids" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterDepartureSearch".to_string()),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_time" => intermediate_rep.departure_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterDepartureSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterDepartureSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterDepartureSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterDepartureSearch".to_string())?,
            departure_location_id: intermediate_rep.departure_location_id.into_iter().next().ok_or("departure_location_id missing in RequestTimeFilterDepartureSearch".to_string())?,
            arrival_location_ids: intermediate_rep.arrival_location_ids.into_iter().next().ok_or("arrival_location_ids missing in RequestTimeFilterDepartureSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterDepartureSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterDepartureSearch".to_string())?,
            departure_time: intermediate_rep.departure_time.into_iter().next().ok_or("departure_time missing in RequestTimeFilterDepartureSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterDepartureSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterDepartureSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterDepartureSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterDepartureSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterDepartureSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterDepartureSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterDepartureSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterDepartureSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestTimeFilterFast value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterFast {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping locations in query parameter serialization

        // Skipping arrival_searches in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterFast value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterFast {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub locations: Vec<Vec<models::RequestLocation>>,
            pub arrival_searches: Vec<models::RequestTimeFilterFastArrivalSearches>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterFast".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "locations" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterFast".to_string()),
                    "arrival_searches" => intermediate_rep.arrival_searches.push(<models::RequestTimeFilterFastArrivalSearches as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterFast".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterFast {
            locations: intermediate_rep.locations.into_iter().next().ok_or("locations missing in RequestTimeFilterFast".to_string())?,
            arrival_searches: intermediate_rep.arrival_searches.into_iter().next().ok_or("arrival_searches missing in RequestTimeFilterFast".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterFast> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterFast>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterFast>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterFast - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterFast> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterFast as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterFast - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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
    pub travel_time: u16,

    #[serde(rename = "arrival_time_period")]
    pub arrival_time_period: models::RequestArrivalTimePeriod,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterFastProperty>,

}

impl RequestTimeFilterFastArrivalManyToOneSearch {
    pub fn new(id: String, arrival_location_id: String, departure_location_ids: Vec<String>, transportation: models::RequestTransportationFast, travel_time: u16, arrival_time_period: models::RequestArrivalTimePeriod, properties: Vec<models::RequestTimeFilterFastProperty>, ) -> RequestTimeFilterFastArrivalManyToOneSearch {
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

/// Converts the RequestTimeFilterFastArrivalManyToOneSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterFastArrivalManyToOneSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("arrival_location_id".to_string());
        params.push(self.arrival_location_id.to_string());


        params.push("departure_location_ids".to_string());
        params.push(self.departure_location_ids.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping arrival_time_period in query parameter serialization

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterFastArrivalManyToOneSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterFastArrivalManyToOneSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub arrival_location_id: Vec<String>,
            pub departure_location_ids: Vec<Vec<String>>,
            pub transportation: Vec<models::RequestTransportationFast>,
            pub travel_time: Vec<u16>,
            pub arrival_time_period: Vec<models::RequestArrivalTimePeriod>,
            pub properties: Vec<Vec<models::RequestTimeFilterFastProperty>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterFastArrivalManyToOneSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_location_id" => intermediate_rep.arrival_location_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_location_ids" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterFastArrivalManyToOneSearch".to_string()),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportationFast as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time_period" => intermediate_rep.arrival_time_period.push(<models::RequestArrivalTimePeriod as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterFastArrivalManyToOneSearch".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterFastArrivalManyToOneSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterFastArrivalManyToOneSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterFastArrivalManyToOneSearch".to_string())?,
            arrival_location_id: intermediate_rep.arrival_location_id.into_iter().next().ok_or("arrival_location_id missing in RequestTimeFilterFastArrivalManyToOneSearch".to_string())?,
            departure_location_ids: intermediate_rep.departure_location_ids.into_iter().next().ok_or("departure_location_ids missing in RequestTimeFilterFastArrivalManyToOneSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterFastArrivalManyToOneSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterFastArrivalManyToOneSearch".to_string())?,
            arrival_time_period: intermediate_rep.arrival_time_period.into_iter().next().ok_or("arrival_time_period missing in RequestTimeFilterFastArrivalManyToOneSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterFastArrivalManyToOneSearch".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterFastArrivalManyToOneSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterFastArrivalManyToOneSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterFastArrivalManyToOneSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterFastArrivalManyToOneSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterFastArrivalManyToOneSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterFastArrivalManyToOneSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterFastArrivalManyToOneSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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
    pub travel_time: u16,

    #[serde(rename = "arrival_time_period")]
    pub arrival_time_period: models::RequestArrivalTimePeriod,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterFastProperty>,

}

impl RequestTimeFilterFastArrivalOneToManySearch {
    pub fn new(id: String, departure_location_id: String, arrival_location_ids: Vec<String>, transportation: models::RequestTransportationFast, travel_time: u16, arrival_time_period: models::RequestArrivalTimePeriod, properties: Vec<models::RequestTimeFilterFastProperty>, ) -> RequestTimeFilterFastArrivalOneToManySearch {
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

/// Converts the RequestTimeFilterFastArrivalOneToManySearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterFastArrivalOneToManySearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("departure_location_id".to_string());
        params.push(self.departure_location_id.to_string());


        params.push("arrival_location_ids".to_string());
        params.push(self.arrival_location_ids.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping arrival_time_period in query parameter serialization

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterFastArrivalOneToManySearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterFastArrivalOneToManySearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub departure_location_id: Vec<String>,
            pub arrival_location_ids: Vec<Vec<String>>,
            pub transportation: Vec<models::RequestTransportationFast>,
            pub travel_time: Vec<u16>,
            pub arrival_time_period: Vec<models::RequestArrivalTimePeriod>,
            pub properties: Vec<Vec<models::RequestTimeFilterFastProperty>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterFastArrivalOneToManySearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_location_id" => intermediate_rep.departure_location_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_location_ids" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterFastArrivalOneToManySearch".to_string()),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportationFast as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time_period" => intermediate_rep.arrival_time_period.push(<models::RequestArrivalTimePeriod as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterFastArrivalOneToManySearch".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterFastArrivalOneToManySearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterFastArrivalOneToManySearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterFastArrivalOneToManySearch".to_string())?,
            departure_location_id: intermediate_rep.departure_location_id.into_iter().next().ok_or("departure_location_id missing in RequestTimeFilterFastArrivalOneToManySearch".to_string())?,
            arrival_location_ids: intermediate_rep.arrival_location_ids.into_iter().next().ok_or("arrival_location_ids missing in RequestTimeFilterFastArrivalOneToManySearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterFastArrivalOneToManySearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterFastArrivalOneToManySearch".to_string())?,
            arrival_time_period: intermediate_rep.arrival_time_period.into_iter().next().ok_or("arrival_time_period missing in RequestTimeFilterFastArrivalOneToManySearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterFastArrivalOneToManySearch".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterFastArrivalOneToManySearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterFastArrivalOneToManySearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterFastArrivalOneToManySearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterFastArrivalOneToManySearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterFastArrivalOneToManySearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterFastArrivalOneToManySearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterFastArrivalOneToManySearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestTimeFilterFastArrivalSearches value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterFastArrivalSearches {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping many_to_one in query parameter serialization

        // Skipping one_to_many in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterFastArrivalSearches value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterFastArrivalSearches {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub many_to_one: Vec<Vec<models::RequestTimeFilterFastArrivalManyToOneSearch>>,
            pub one_to_many: Vec<Vec<models::RequestTimeFilterFastArrivalOneToManySearch>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterFastArrivalSearches".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "many_to_one" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterFastArrivalSearches".to_string()),
                    "one_to_many" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterFastArrivalSearches".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterFastArrivalSearches".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterFastArrivalSearches {
            many_to_one: intermediate_rep.many_to_one.into_iter().next(),
            one_to_many: intermediate_rep.one_to_many.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterFastArrivalSearches> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterFastArrivalSearches>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterFastArrivalSearches>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterFastArrivalSearches - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterFastArrivalSearches> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterFastArrivalSearches as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterFastArrivalSearches - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
pub enum RequestTimeFilterFastProperty {
    #[serde(rename = "travel_time")]
    TRAVEL_TIME,
    #[serde(rename = "fares")]
    FARES,
}

impl std::fmt::Display for RequestTimeFilterFastProperty {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            RequestTimeFilterFastProperty::TRAVEL_TIME => write!(f, "{}", "travel_time"),
            RequestTimeFilterFastProperty::FARES => write!(f, "{}", "fares"),
        }
    }
}

impl std::str::FromStr for RequestTimeFilterFastProperty {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "travel_time" => std::result::Result::Ok(RequestTimeFilterFastProperty::TRAVEL_TIME),
            "fares" => std::result::Result::Ok(RequestTimeFilterFastProperty::FARES),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestTimeFilterPostcodeDistricts value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodeDistricts {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping departure_searches in query parameter serialization

        // Skipping arrival_searches in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodeDistricts value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodeDistricts {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub departure_searches: Vec<Vec<models::RequestTimeFilterPostcodeDistrictsDepartureSearch>>,
            pub arrival_searches: Vec<Vec<models::RequestTimeFilterPostcodeDistrictsArrivalSearch>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodeDistricts".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "departure_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodeDistricts".to_string()),
                    "arrival_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodeDistricts".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodeDistricts".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodeDistricts {
            departure_searches: intermediate_rep.departure_searches.into_iter().next(),
            arrival_searches: intermediate_rep.arrival_searches.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodeDistricts> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodeDistricts>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodeDistricts>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodeDistricts - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodeDistricts> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodeDistricts as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodeDistricts - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeFilterPostcodeDistrictsArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u16,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodeDistrictsProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodeDistrictsArrivalSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u16, arrival_time: chrono::DateTime::<chrono::Utc>, reachable_postcodes_threshold: f64, properties: Vec<models::RequestTimeFilterPostcodeDistrictsProperty>, ) -> RequestTimeFilterPostcodeDistrictsArrivalSearch {
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

/// Converts the RequestTimeFilterPostcodeDistrictsArrivalSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodeDistrictsArrivalSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping arrival_time in query parameter serialization


        params.push("reachable_postcodes_threshold".to_string());
        params.push(self.reachable_postcodes_threshold.to_string());

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodeDistrictsArrivalSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodeDistrictsArrivalSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub arrival_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub reachable_postcodes_threshold: Vec<f64>,
            pub properties: Vec<Vec<models::RequestTimeFilterPostcodeDistrictsProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time" => intermediate_rep.arrival_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "reachable_postcodes_threshold" => intermediate_rep.reachable_postcodes_threshold.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodeDistrictsArrivalSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string())?,
            arrival_time: intermediate_rep.arrival_time.into_iter().next().ok_or("arrival_time missing in RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string())?,
            reachable_postcodes_threshold: intermediate_rep.reachable_postcodes_threshold.into_iter().next().ok_or("reachable_postcodes_threshold missing in RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterPostcodeDistrictsArrivalSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodeDistrictsArrivalSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodeDistrictsArrivalSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodeDistrictsArrivalSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodeDistrictsArrivalSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodeDistrictsArrivalSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodeDistrictsArrivalSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodeDistrictsArrivalSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeFilterPostcodeDistrictsDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u16,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodeDistrictsProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodeDistrictsDepartureSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u16, departure_time: chrono::DateTime::<chrono::Utc>, reachable_postcodes_threshold: f64, properties: Vec<models::RequestTimeFilterPostcodeDistrictsProperty>, ) -> RequestTimeFilterPostcodeDistrictsDepartureSearch {
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

/// Converts the RequestTimeFilterPostcodeDistrictsDepartureSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodeDistrictsDepartureSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping departure_time in query parameter serialization


        params.push("reachable_postcodes_threshold".to_string());
        params.push(self.reachable_postcodes_threshold.to_string());

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodeDistrictsDepartureSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodeDistrictsDepartureSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub departure_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub reachable_postcodes_threshold: Vec<f64>,
            pub properties: Vec<Vec<models::RequestTimeFilterPostcodeDistrictsProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_time" => intermediate_rep.departure_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "reachable_postcodes_threshold" => intermediate_rep.reachable_postcodes_threshold.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodeDistrictsDepartureSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string())?,
            departure_time: intermediate_rep.departure_time.into_iter().next().ok_or("departure_time missing in RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string())?,
            reachable_postcodes_threshold: intermediate_rep.reachable_postcodes_threshold.into_iter().next().ok_or("reachable_postcodes_threshold missing in RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterPostcodeDistrictsDepartureSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodeDistrictsDepartureSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodeDistrictsDepartureSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodeDistrictsDepartureSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodeDistrictsDepartureSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodeDistrictsDepartureSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodeDistrictsDepartureSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodeDistrictsDepartureSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
pub enum RequestTimeFilterPostcodeDistrictsProperty {
    #[serde(rename = "travel_time_reachable")]
    TRAVEL_TIME_REACHABLE,
    #[serde(rename = "travel_time_all")]
    TRAVEL_TIME_ALL,
    #[serde(rename = "coverage")]
    COVERAGE,
}

impl std::fmt::Display for RequestTimeFilterPostcodeDistrictsProperty {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            RequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_REACHABLE => write!(f, "{}", "travel_time_reachable"),
            RequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_ALL => write!(f, "{}", "travel_time_all"),
            RequestTimeFilterPostcodeDistrictsProperty::COVERAGE => write!(f, "{}", "coverage"),
        }
    }
}

impl std::str::FromStr for RequestTimeFilterPostcodeDistrictsProperty {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "travel_time_reachable" => std::result::Result::Ok(RequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_REACHABLE),
            "travel_time_all" => std::result::Result::Ok(RequestTimeFilterPostcodeDistrictsProperty::TRAVEL_TIME_ALL),
            "coverage" => std::result::Result::Ok(RequestTimeFilterPostcodeDistrictsProperty::COVERAGE),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold(f64);

impl std::convert::From<f64> for RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold {
    fn from(x: f64) -> Self {
        RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold(x)
    }
}

impl std::convert::From<RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold> for f64 {
    fn from(x: RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold {
    type Target = f64;
    fn deref(&self) -> &f64 {
        &self.0
    }
}

impl std::ops::DerefMut for RequestTimeFilterPostcodeDistrictsReachablePostcodesThreshold {
    fn deref_mut(&mut self) -> &mut f64 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestTimeFilterPostcodeSectors value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodeSectors {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping departure_searches in query parameter serialization

        // Skipping arrival_searches in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodeSectors value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodeSectors {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub departure_searches: Vec<Vec<models::RequestTimeFilterPostcodeSectorsDepartureSearch>>,
            pub arrival_searches: Vec<Vec<models::RequestTimeFilterPostcodeSectorsArrivalSearch>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodeSectors".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "departure_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodeSectors".to_string()),
                    "arrival_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodeSectors".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodeSectors".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodeSectors {
            departure_searches: intermediate_rep.departure_searches.into_iter().next(),
            arrival_searches: intermediate_rep.arrival_searches.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodeSectors> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodeSectors>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodeSectors>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodeSectors - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodeSectors> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodeSectors as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodeSectors - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeFilterPostcodeSectorsArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u16,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodeSectorsProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodeSectorsArrivalSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u16, arrival_time: chrono::DateTime::<chrono::Utc>, reachable_postcodes_threshold: f64, properties: Vec<models::RequestTimeFilterPostcodeSectorsProperty>, ) -> RequestTimeFilterPostcodeSectorsArrivalSearch {
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

/// Converts the RequestTimeFilterPostcodeSectorsArrivalSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodeSectorsArrivalSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping arrival_time in query parameter serialization


        params.push("reachable_postcodes_threshold".to_string());
        params.push(self.reachable_postcodes_threshold.to_string());

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodeSectorsArrivalSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodeSectorsArrivalSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub arrival_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub reachable_postcodes_threshold: Vec<f64>,
            pub properties: Vec<Vec<models::RequestTimeFilterPostcodeSectorsProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodeSectorsArrivalSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time" => intermediate_rep.arrival_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "reachable_postcodes_threshold" => intermediate_rep.reachable_postcodes_threshold.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodeSectorsArrivalSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodeSectorsArrivalSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodeSectorsArrivalSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterPostcodeSectorsArrivalSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterPostcodeSectorsArrivalSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterPostcodeSectorsArrivalSearch".to_string())?,
            arrival_time: intermediate_rep.arrival_time.into_iter().next().ok_or("arrival_time missing in RequestTimeFilterPostcodeSectorsArrivalSearch".to_string())?,
            reachable_postcodes_threshold: intermediate_rep.reachable_postcodes_threshold.into_iter().next().ok_or("reachable_postcodes_threshold missing in RequestTimeFilterPostcodeSectorsArrivalSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterPostcodeSectorsArrivalSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodeSectorsArrivalSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodeSectorsArrivalSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodeSectorsArrivalSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodeSectorsArrivalSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodeSectorsArrivalSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodeSectorsArrivalSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodeSectorsArrivalSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeFilterPostcodeSectorsDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u16,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "reachable_postcodes_threshold")]
    pub reachable_postcodes_threshold: f64,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodeSectorsProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodeSectorsDepartureSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u16, departure_time: chrono::DateTime::<chrono::Utc>, reachable_postcodes_threshold: f64, properties: Vec<models::RequestTimeFilterPostcodeSectorsProperty>, ) -> RequestTimeFilterPostcodeSectorsDepartureSearch {
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

/// Converts the RequestTimeFilterPostcodeSectorsDepartureSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodeSectorsDepartureSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping departure_time in query parameter serialization


        params.push("reachable_postcodes_threshold".to_string());
        params.push(self.reachable_postcodes_threshold.to_string());

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodeSectorsDepartureSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodeSectorsDepartureSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub departure_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub reachable_postcodes_threshold: Vec<f64>,
            pub properties: Vec<Vec<models::RequestTimeFilterPostcodeSectorsProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodeSectorsDepartureSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_time" => intermediate_rep.departure_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "reachable_postcodes_threshold" => intermediate_rep.reachable_postcodes_threshold.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodeSectorsDepartureSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodeSectorsDepartureSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodeSectorsDepartureSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterPostcodeSectorsDepartureSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterPostcodeSectorsDepartureSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterPostcodeSectorsDepartureSearch".to_string())?,
            departure_time: intermediate_rep.departure_time.into_iter().next().ok_or("departure_time missing in RequestTimeFilterPostcodeSectorsDepartureSearch".to_string())?,
            reachable_postcodes_threshold: intermediate_rep.reachable_postcodes_threshold.into_iter().next().ok_or("reachable_postcodes_threshold missing in RequestTimeFilterPostcodeSectorsDepartureSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterPostcodeSectorsDepartureSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodeSectorsDepartureSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodeSectorsDepartureSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodeSectorsDepartureSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodeSectorsDepartureSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodeSectorsDepartureSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodeSectorsDepartureSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodeSectorsDepartureSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
pub enum RequestTimeFilterPostcodeSectorsProperty {
    #[serde(rename = "travel_time_reachable")]
    TRAVEL_TIME_REACHABLE,
    #[serde(rename = "travel_time_all")]
    TRAVEL_TIME_ALL,
    #[serde(rename = "coverage")]
    COVERAGE,
}

impl std::fmt::Display for RequestTimeFilterPostcodeSectorsProperty {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            RequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_REACHABLE => write!(f, "{}", "travel_time_reachable"),
            RequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_ALL => write!(f, "{}", "travel_time_all"),
            RequestTimeFilterPostcodeSectorsProperty::COVERAGE => write!(f, "{}", "coverage"),
        }
    }
}

impl std::str::FromStr for RequestTimeFilterPostcodeSectorsProperty {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "travel_time_reachable" => std::result::Result::Ok(RequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_REACHABLE),
            "travel_time_all" => std::result::Result::Ok(RequestTimeFilterPostcodeSectorsProperty::TRAVEL_TIME_ALL),
            "coverage" => std::result::Result::Ok(RequestTimeFilterPostcodeSectorsProperty::COVERAGE),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold(f64);

impl std::convert::From<f64> for RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold {
    fn from(x: f64) -> Self {
        RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold(x)
    }
}

impl std::convert::From<RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold> for f64 {
    fn from(x: RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold {
    type Target = f64;
    fn deref(&self) -> &f64 {
        &self.0
    }
}

impl std::ops::DerefMut for RequestTimeFilterPostcodeSectorsReachablePostcodesThreshold {
    fn deref_mut(&mut self) -> &mut f64 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestTimeFilterPostcodes value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodes {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping departure_searches in query parameter serialization

        // Skipping arrival_searches in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodes value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodes {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub departure_searches: Vec<Vec<models::RequestTimeFilterPostcodesDepartureSearch>>,
            pub arrival_searches: Vec<Vec<models::RequestTimeFilterPostcodesArrivalSearch>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodes".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "departure_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodes".to_string()),
                    "arrival_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodes".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodes".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodes {
            departure_searches: intermediate_rep.departure_searches.into_iter().next(),
            arrival_searches: intermediate_rep.arrival_searches.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodes> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodes>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodes>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodes - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodes> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodes as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodes - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeFilterPostcodesArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u16,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodesProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodesArrivalSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u16, arrival_time: chrono::DateTime::<chrono::Utc>, properties: Vec<models::RequestTimeFilterPostcodesProperty>, ) -> RequestTimeFilterPostcodesArrivalSearch {
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

/// Converts the RequestTimeFilterPostcodesArrivalSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodesArrivalSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping arrival_time in query parameter serialization

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodesArrivalSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodesArrivalSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub arrival_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub properties: Vec<Vec<models::RequestTimeFilterPostcodesProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodesArrivalSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time" => intermediate_rep.arrival_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodesArrivalSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodesArrivalSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodesArrivalSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterPostcodesArrivalSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterPostcodesArrivalSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterPostcodesArrivalSearch".to_string())?,
            arrival_time: intermediate_rep.arrival_time.into_iter().next().ok_or("arrival_time missing in RequestTimeFilterPostcodesArrivalSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterPostcodesArrivalSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodesArrivalSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodesArrivalSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodesArrivalSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodesArrivalSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodesArrivalSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodesArrivalSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodesArrivalSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeFilterPostcodesDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u16,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "properties")]
    pub properties: Vec<models::RequestTimeFilterPostcodesProperty>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeFull>,

}

impl RequestTimeFilterPostcodesDepartureSearch {
    pub fn new(id: String, transportation: models::RequestTransportation, travel_time: u16, departure_time: chrono::DateTime::<chrono::Utc>, properties: Vec<models::RequestTimeFilterPostcodesProperty>, ) -> RequestTimeFilterPostcodesDepartureSearch {
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

/// Converts the RequestTimeFilterPostcodesDepartureSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeFilterPostcodesDepartureSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping departure_time in query parameter serialization

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeFilterPostcodesDepartureSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeFilterPostcodesDepartureSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub departure_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub properties: Vec<Vec<models::RequestTimeFilterPostcodesProperty>>,
            pub range: Vec<models::RequestRangeFull>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeFilterPostcodesDepartureSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_time" => intermediate_rep.departure_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeFilterPostcodesDepartureSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeFull as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeFilterPostcodesDepartureSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeFilterPostcodesDepartureSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeFilterPostcodesDepartureSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeFilterPostcodesDepartureSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeFilterPostcodesDepartureSearch".to_string())?,
            departure_time: intermediate_rep.departure_time.into_iter().next().ok_or("departure_time missing in RequestTimeFilterPostcodesDepartureSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in RequestTimeFilterPostcodesDepartureSearch".to_string())?,
            range: intermediate_rep.range.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeFilterPostcodesDepartureSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeFilterPostcodesDepartureSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeFilterPostcodesDepartureSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeFilterPostcodesDepartureSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeFilterPostcodesDepartureSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeFilterPostcodesDepartureSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeFilterPostcodesDepartureSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
pub enum RequestTimeFilterPostcodesProperty {
    #[serde(rename = "travel_time")]
    TRAVEL_TIME,
    #[serde(rename = "distance")]
    DISTANCE,
}

impl std::fmt::Display for RequestTimeFilterPostcodesProperty {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            RequestTimeFilterPostcodesProperty::TRAVEL_TIME => write!(f, "{}", "travel_time"),
            RequestTimeFilterPostcodesProperty::DISTANCE => write!(f, "{}", "distance"),
        }
    }
}

impl std::str::FromStr for RequestTimeFilterPostcodesProperty {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "travel_time" => std::result::Result::Ok(RequestTimeFilterPostcodesProperty::TRAVEL_TIME),
            "distance" => std::result::Result::Ok(RequestTimeFilterPostcodesProperty::DISTANCE),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
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

impl std::fmt::Display for RequestTimeFilterProperty {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            RequestTimeFilterProperty::TRAVEL_TIME => write!(f, "{}", "travel_time"),
            RequestTimeFilterProperty::DISTANCE => write!(f, "{}", "distance"),
            RequestTimeFilterProperty::DISTANCE_BREAKDOWN => write!(f, "{}", "distance_breakdown"),
            RequestTimeFilterProperty::FARES => write!(f, "{}", "fares"),
            RequestTimeFilterProperty::ROUTE => write!(f, "{}", "route"),
        }
    }
}

impl std::str::FromStr for RequestTimeFilterProperty {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "travel_time" => std::result::Result::Ok(RequestTimeFilterProperty::TRAVEL_TIME),
            "distance" => std::result::Result::Ok(RequestTimeFilterProperty::DISTANCE),
            "distance_breakdown" => std::result::Result::Ok(RequestTimeFilterProperty::DISTANCE_BREAKDOWN),
            "fares" => std::result::Result::Ok(RequestTimeFilterProperty::FARES),
            "route" => std::result::Result::Ok(RequestTimeFilterProperty::ROUTE),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestTimeMap value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeMap {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping departure_searches in query parameter serialization

        // Skipping arrival_searches in query parameter serialization

        // Skipping unions in query parameter serialization

        // Skipping intersections in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeMap value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeMap {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub departure_searches: Vec<Vec<models::RequestTimeMapDepartureSearch>>,
            pub arrival_searches: Vec<Vec<models::RequestTimeMapArrivalSearch>>,
            pub unions: Vec<Vec<models::RequestUnionOnIntersection>>,
            pub intersections: Vec<Vec<models::RequestUnionOnIntersection>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeMap".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "departure_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeMap".to_string()),
                    "arrival_searches" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeMap".to_string()),
                    "unions" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeMap".to_string()),
                    "intersections" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeMap".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeMap".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeMap {
            departure_searches: intermediate_rep.departure_searches.into_iter().next(),
            arrival_searches: intermediate_rep.arrival_searches.into_iter().next(),
            unions: intermediate_rep.unions.into_iter().next(),
            intersections: intermediate_rep.intersections.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeMap> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeMap>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeMap>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeMap - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeMap> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeMap as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeMap - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeMapArrivalSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "coords")]
    pub coords: models::Coords,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u16,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "properties")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub properties: Option<Vec<models::RequestTimeMapProperty>>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeNoMaxResults>,

    #[serde(rename = "level_of_detail")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub level_of_detail: Option<models::RequestLevelOfDetail>,

}

impl RequestTimeMapArrivalSearch {
    pub fn new(id: String, coords: models::Coords, transportation: models::RequestTransportation, travel_time: u16, arrival_time: chrono::DateTime::<chrono::Utc>, ) -> RequestTimeMapArrivalSearch {
        RequestTimeMapArrivalSearch {
            id: id,
            coords: coords,
            transportation: transportation,
            travel_time: travel_time,
            arrival_time: arrival_time,
            properties: None,
            range: None,
            level_of_detail: None,
        }
    }
}

/// Converts the RequestTimeMapArrivalSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeMapArrivalSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping coords in query parameter serialization

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping arrival_time in query parameter serialization

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        // Skipping level_of_detail in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeMapArrivalSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeMapArrivalSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub coords: Vec<models::Coords>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub arrival_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub properties: Vec<Vec<models::RequestTimeMapProperty>>,
            pub range: Vec<models::RequestRangeNoMaxResults>,
            pub level_of_detail: Vec<models::RequestLevelOfDetail>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeMapArrivalSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "coords" => intermediate_rep.coords.push(<models::Coords as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time" => intermediate_rep.arrival_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeMapArrivalSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeNoMaxResults as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "level_of_detail" => intermediate_rep.level_of_detail.push(<models::RequestLevelOfDetail as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeMapArrivalSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeMapArrivalSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeMapArrivalSearch".to_string())?,
            coords: intermediate_rep.coords.into_iter().next().ok_or("coords missing in RequestTimeMapArrivalSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeMapArrivalSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeMapArrivalSearch".to_string())?,
            arrival_time: intermediate_rep.arrival_time.into_iter().next().ok_or("arrival_time missing in RequestTimeMapArrivalSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next(),
            range: intermediate_rep.range.into_iter().next(),
            level_of_detail: intermediate_rep.level_of_detail.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeMapArrivalSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeMapArrivalSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeMapArrivalSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeMapArrivalSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeMapArrivalSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeMapArrivalSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeMapArrivalSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTimeMapDepartureSearch {
    #[serde(rename = "id")]
    pub id: String,

    #[serde(rename = "coords")]
    pub coords: models::Coords,

    #[serde(rename = "transportation")]
    pub transportation: models::RequestTransportation,

    #[serde(rename = "travel_time")]
    pub travel_time: u16,

    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "properties")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub properties: Option<Vec<models::RequestTimeMapProperty>>,

    #[serde(rename = "range")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub range: Option<models::RequestRangeNoMaxResults>,

    #[serde(rename = "level_of_detail")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub level_of_detail: Option<models::RequestLevelOfDetail>,

}

impl RequestTimeMapDepartureSearch {
    pub fn new(id: String, coords: models::Coords, transportation: models::RequestTransportation, travel_time: u16, departure_time: chrono::DateTime::<chrono::Utc>, ) -> RequestTimeMapDepartureSearch {
        RequestTimeMapDepartureSearch {
            id: id,
            coords: coords,
            transportation: transportation,
            travel_time: travel_time,
            departure_time: departure_time,
            properties: None,
            range: None,
            level_of_detail: None,
        }
    }
}

/// Converts the RequestTimeMapDepartureSearch value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTimeMapDepartureSearch {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping coords in query parameter serialization

        // Skipping transportation in query parameter serialization


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping departure_time in query parameter serialization

        // Skipping properties in query parameter serialization

        // Skipping range in query parameter serialization

        // Skipping level_of_detail in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTimeMapDepartureSearch value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTimeMapDepartureSearch {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub coords: Vec<models::Coords>,
            pub transportation: Vec<models::RequestTransportation>,
            pub travel_time: Vec<u16>,
            pub departure_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub properties: Vec<Vec<models::RequestTimeMapProperty>>,
            pub range: Vec<models::RequestRangeNoMaxResults>,
            pub level_of_detail: Vec<models::RequestLevelOfDetail>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTimeMapDepartureSearch".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "coords" => intermediate_rep.coords.push(<models::Coords as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "transportation" => intermediate_rep.transportation.push(<models::RequestTransportation as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<u16 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_time" => intermediate_rep.departure_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestTimeMapDepartureSearch".to_string()),
                    "range" => intermediate_rep.range.push(<models::RequestRangeNoMaxResults as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "level_of_detail" => intermediate_rep.level_of_detail.push(<models::RequestLevelOfDetail as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTimeMapDepartureSearch".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTimeMapDepartureSearch {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestTimeMapDepartureSearch".to_string())?,
            coords: intermediate_rep.coords.into_iter().next().ok_or("coords missing in RequestTimeMapDepartureSearch".to_string())?,
            transportation: intermediate_rep.transportation.into_iter().next().ok_or("transportation missing in RequestTimeMapDepartureSearch".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in RequestTimeMapDepartureSearch".to_string())?,
            departure_time: intermediate_rep.departure_time.into_iter().next().ok_or("departure_time missing in RequestTimeMapDepartureSearch".to_string())?,
            properties: intermediate_rep.properties.into_iter().next(),
            range: intermediate_rep.range.into_iter().next(),
            level_of_detail: intermediate_rep.level_of_detail.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTimeMapDepartureSearch> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTimeMapDepartureSearch>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTimeMapDepartureSearch>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTimeMapDepartureSearch - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTimeMapDepartureSearch> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTimeMapDepartureSearch as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTimeMapDepartureSearch - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
pub enum RequestTimeMapProperty {
    #[serde(rename = "is_only_walking")]
    IS_ONLY_WALKING,
}

impl std::fmt::Display for RequestTimeMapProperty {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match *self {
            RequestTimeMapProperty::IS_ONLY_WALKING => write!(f, "{}", "is_only_walking"),
        }
    }
}

impl std::str::FromStr for RequestTimeMapProperty {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "is_only_walking" => std::result::Result::Ok(RequestTimeMapProperty::IS_ONLY_WALKING),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTransportation {
    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "type")]
    pub type_: String,

    #[serde(rename = "disable_border_crossing")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub disable_border_crossing: Option<bool>,

    #[serde(rename = "pt_change_delay")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub pt_change_delay: Option<isize>,

    #[serde(rename = "walking_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub walking_time: Option<isize>,

    #[serde(rename = "driving_time_to_station")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub driving_time_to_station: Option<isize>,

    #[serde(rename = "cycling_time_to_station")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub cycling_time_to_station: Option<isize>,

    #[serde(rename = "parking_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub parking_time: Option<isize>,

    #[serde(rename = "boarding_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub boarding_time: Option<isize>,

}

impl RequestTransportation {
    pub fn new(type_: String, ) -> RequestTransportation {
        RequestTransportation {
            type_: type_,
            disable_border_crossing: None,
            pt_change_delay: None,
            walking_time: None,
            driving_time_to_station: None,
            cycling_time_to_station: None,
            parking_time: None,
            boarding_time: None,
        }
    }
}

/// Converts the RequestTransportation value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTransportation {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("type".to_string());
        params.push(self.type_.to_string());


        if let Some(ref disable_border_crossing) = self.disable_border_crossing {
            params.push("disable_border_crossing".to_string());
            params.push(disable_border_crossing.to_string());
        }


        if let Some(ref pt_change_delay) = self.pt_change_delay {
            params.push("pt_change_delay".to_string());
            params.push(pt_change_delay.to_string());
        }


        if let Some(ref walking_time) = self.walking_time {
            params.push("walking_time".to_string());
            params.push(walking_time.to_string());
        }


        if let Some(ref driving_time_to_station) = self.driving_time_to_station {
            params.push("driving_time_to_station".to_string());
            params.push(driving_time_to_station.to_string());
        }


        if let Some(ref cycling_time_to_station) = self.cycling_time_to_station {
            params.push("cycling_time_to_station".to_string());
            params.push(cycling_time_to_station.to_string());
        }


        if let Some(ref parking_time) = self.parking_time {
            params.push("parking_time".to_string());
            params.push(parking_time.to_string());
        }


        if let Some(ref boarding_time) = self.boarding_time {
            params.push("boarding_time".to_string());
            params.push(boarding_time.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTransportation value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTransportation {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub type_: Vec<String>,
            pub disable_border_crossing: Vec<bool>,
            pub pt_change_delay: Vec<isize>,
            pub walking_time: Vec<isize>,
            pub driving_time_to_station: Vec<isize>,
            pub cycling_time_to_station: Vec<isize>,
            pub parking_time: Vec<isize>,
            pub boarding_time: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTransportation".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "disable_border_crossing" => intermediate_rep.disable_border_crossing.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "pt_change_delay" => intermediate_rep.pt_change_delay.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "walking_time" => intermediate_rep.walking_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "driving_time_to_station" => intermediate_rep.driving_time_to_station.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "cycling_time_to_station" => intermediate_rep.cycling_time_to_station.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "parking_time" => intermediate_rep.parking_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "boarding_time" => intermediate_rep.boarding_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTransportation".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTransportation {
            type_: intermediate_rep.type_.into_iter().next().ok_or("type missing in RequestTransportation".to_string())?,
            disable_border_crossing: intermediate_rep.disable_border_crossing.into_iter().next(),
            pt_change_delay: intermediate_rep.pt_change_delay.into_iter().next(),
            walking_time: intermediate_rep.walking_time.into_iter().next(),
            driving_time_to_station: intermediate_rep.driving_time_to_station.into_iter().next(),
            cycling_time_to_station: intermediate_rep.cycling_time_to_station.into_iter().next(),
            parking_time: intermediate_rep.parking_time.into_iter().next(),
            boarding_time: intermediate_rep.boarding_time.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTransportation> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTransportation>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTransportation>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTransportation - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTransportation> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTransportation as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTransportation - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTransportationFast {
    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "type")]
    pub type_: String,

}

impl RequestTransportationFast {
    pub fn new(type_: String, ) -> RequestTransportationFast {
        RequestTransportationFast {
            type_: type_,
        }
    }
}

/// Converts the RequestTransportationFast value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestTransportationFast {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("type".to_string());
        params.push(self.type_.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestTransportationFast value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestTransportationFast {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub type_: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestTransportationFast".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestTransportationFast".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestTransportationFast {
            type_: intermediate_rep.type_.into_iter().next().ok_or("type missing in RequestTransportationFast".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestTransportationFast> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestTransportationFast>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestTransportationFast>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestTransportationFast - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestTransportationFast> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestTransportationFast as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestTransportationFast - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct RequestTravelTime(i32);

impl std::convert::From<i32> for RequestTravelTime {
    fn from(x: i32) -> Self {
        RequestTravelTime(x)
    }
}

impl std::convert::From<RequestTravelTime> for i32 {
    fn from(x: RequestTravelTime) -> Self {
        x.0
    }
}

impl std::ops::Deref for RequestTravelTime {
    type Target = i32;
    fn deref(&self) -> &i32 {
        &self.0
    }
}

impl std::ops::DerefMut for RequestTravelTime {
    fn deref_mut(&mut self) -> &mut i32 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the RequestUnionOnIntersection value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for RequestUnionOnIntersection {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("search_ids".to_string());
        params.push(self.search_ids.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a RequestUnionOnIntersection value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for RequestUnionOnIntersection {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub search_ids: Vec<Vec<String>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing RequestUnionOnIntersection".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "search_ids" => return std::result::Result::Err("Parsing a container in this style is not supported in RequestUnionOnIntersection".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing RequestUnionOnIntersection".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(RequestUnionOnIntersection {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in RequestUnionOnIntersection".to_string())?,
            search_ids: intermediate_rep.search_ids.into_iter().next().ok_or("search_ids missing in RequestUnionOnIntersection".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<RequestUnionOnIntersection> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<RequestUnionOnIntersection>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<RequestUnionOnIntersection>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for RequestUnionOnIntersection - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<RequestUnionOnIntersection> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <RequestUnionOnIntersection as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into RequestUnionOnIntersection - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseBoundingBox value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseBoundingBox {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping envelope in query parameter serialization

        // Skipping boxes in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseBoundingBox value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseBoundingBox {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub envelope: Vec<models::ResponseBox>,
            pub boxes: Vec<Vec<models::ResponseBox>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseBoundingBox".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "envelope" => intermediate_rep.envelope.push(<models::ResponseBox as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "boxes" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseBoundingBox".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseBoundingBox".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseBoundingBox {
            envelope: intermediate_rep.envelope.into_iter().next().ok_or("envelope missing in ResponseBoundingBox".to_string())?,
            boxes: intermediate_rep.boxes.into_iter().next().ok_or("boxes missing in ResponseBoundingBox".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseBoundingBox> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseBoundingBox>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseBoundingBox>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseBoundingBox - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseBoundingBox> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseBoundingBox as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseBoundingBox - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseBox value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseBox {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("min_lat".to_string());
        params.push(self.min_lat.to_string());


        params.push("max_lat".to_string());
        params.push(self.max_lat.to_string());


        params.push("min_lng".to_string());
        params.push(self.min_lng.to_string());


        params.push("max_lng".to_string());
        params.push(self.max_lng.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseBox value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseBox {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub min_lat: Vec<f64>,
            pub max_lat: Vec<f64>,
            pub min_lng: Vec<f64>,
            pub max_lng: Vec<f64>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseBox".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "min_lat" => intermediate_rep.min_lat.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "max_lat" => intermediate_rep.max_lat.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "min_lng" => intermediate_rep.min_lng.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "max_lng" => intermediate_rep.max_lng.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseBox".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseBox {
            min_lat: intermediate_rep.min_lat.into_iter().next().ok_or("min_lat missing in ResponseBox".to_string())?,
            max_lat: intermediate_rep.max_lat.into_iter().next().ok_or("max_lat missing in ResponseBox".to_string())?,
            min_lng: intermediate_rep.min_lng.into_iter().next().ok_or("min_lng missing in ResponseBox".to_string())?,
            max_lng: intermediate_rep.max_lng.into_iter().next().ok_or("max_lng missing in ResponseBox".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseBox> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseBox>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseBox>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseBox - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseBox> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseBox as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseBox - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseDistance(i32);

impl std::convert::From<i32> for ResponseDistance {
    fn from(x: i32) -> Self {
        ResponseDistance(x)
    }
}

impl std::convert::From<ResponseDistance> for i32 {
    fn from(x: ResponseDistance) -> Self {
        x.0
    }
}

impl std::ops::Deref for ResponseDistance {
    type Target = i32;
    fn deref(&self) -> &i32 {
        &self.0
    }
}

impl std::ops::DerefMut for ResponseDistance {
    fn deref_mut(&mut self) -> &mut i32 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseDistanceBreakdownItem {
    #[serde(rename = "mode")]
    pub mode: models::ResponseTransportationMode,

    #[serde(rename = "distance")]
    pub distance: isize,

}

impl ResponseDistanceBreakdownItem {
    pub fn new(mode: models::ResponseTransportationMode, distance: isize, ) -> ResponseDistanceBreakdownItem {
        ResponseDistanceBreakdownItem {
            mode: mode,
            distance: distance,
        }
    }
}

/// Converts the ResponseDistanceBreakdownItem value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseDistanceBreakdownItem {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping mode in query parameter serialization


        params.push("distance".to_string());
        params.push(self.distance.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseDistanceBreakdownItem value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseDistanceBreakdownItem {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub mode: Vec<models::ResponseTransportationMode>,
            pub distance: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseDistanceBreakdownItem".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "mode" => intermediate_rep.mode.push(<models::ResponseTransportationMode as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "distance" => intermediate_rep.distance.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseDistanceBreakdownItem".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseDistanceBreakdownItem {
            mode: intermediate_rep.mode.into_iter().next().ok_or("mode missing in ResponseDistanceBreakdownItem".to_string())?,
            distance: intermediate_rep.distance.into_iter().next().ok_or("distance missing in ResponseDistanceBreakdownItem".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseDistanceBreakdownItem> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseDistanceBreakdownItem>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseDistanceBreakdownItem>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseDistanceBreakdownItem - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseDistanceBreakdownItem> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseDistanceBreakdownItem as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseDistanceBreakdownItem - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseError {
    #[serde(rename = "http_status")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub http_status: Option<isize>,

    #[serde(rename = "error_code")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub error_code: Option<isize>,

    #[serde(rename = "description")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub description: Option<String>,

    #[serde(rename = "documentation_link")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub documentation_link: Option<String>,

    #[serde(rename = "additional_info")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub additional_info: Option<std::collections::HashMap<String, Vec<String>>>,

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

/// Converts the ResponseError value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseError {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref http_status) = self.http_status {
            params.push("http_status".to_string());
            params.push(http_status.to_string());
        }


        if let Some(ref error_code) = self.error_code {
            params.push("error_code".to_string());
            params.push(error_code.to_string());
        }


        if let Some(ref description) = self.description {
            params.push("description".to_string());
            params.push(description.to_string());
        }


        if let Some(ref documentation_link) = self.documentation_link {
            params.push("documentation_link".to_string());
            params.push(documentation_link.to_string());
        }

        // Skipping additional_info in query parameter serialization
        // Skipping additional_info in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseError value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseError {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub http_status: Vec<isize>,
            pub error_code: Vec<isize>,
            pub description: Vec<String>,
            pub documentation_link: Vec<String>,
            pub additional_info: Vec<std::collections::HashMap<String, Vec<String>>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseError".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "http_status" => intermediate_rep.http_status.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "error_code" => intermediate_rep.error_code.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "description" => intermediate_rep.description.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "documentation_link" => intermediate_rep.documentation_link.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "additional_info" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseError".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseError".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseError {
            http_status: intermediate_rep.http_status.into_iter().next(),
            error_code: intermediate_rep.error_code.into_iter().next(),
            description: intermediate_rep.description.into_iter().next(),
            documentation_link: intermediate_rep.documentation_link.into_iter().next(),
            additional_info: intermediate_rep.additional_info.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseError> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseError>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseError>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseError - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseError> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseError as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseError - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseFareTicket {
    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "type")]
    pub type_: String,

    #[serde(rename = "price")]
    pub price: f64,

    #[serde(rename = "currency")]
    pub currency: String,

}

impl ResponseFareTicket {
    pub fn new(type_: String, price: f64, currency: String, ) -> ResponseFareTicket {
        ResponseFareTicket {
            type_: type_,
            price: price,
            currency: currency,
        }
    }
}

/// Converts the ResponseFareTicket value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseFareTicket {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("type".to_string());
        params.push(self.type_.to_string());


        params.push("price".to_string());
        params.push(self.price.to_string());


        params.push("currency".to_string());
        params.push(self.currency.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseFareTicket value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseFareTicket {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub type_: Vec<String>,
            pub price: Vec<f64>,
            pub currency: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseFareTicket".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "price" => intermediate_rep.price.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "currency" => intermediate_rep.currency.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseFareTicket".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseFareTicket {
            type_: intermediate_rep.type_.into_iter().next().ok_or("type missing in ResponseFareTicket".to_string())?,
            price: intermediate_rep.price.into_iter().next().ok_or("price missing in ResponseFareTicket".to_string())?,
            currency: intermediate_rep.currency.into_iter().next().ok_or("currency missing in ResponseFareTicket".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseFareTicket> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseFareTicket>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseFareTicket>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseFareTicket - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseFareTicket> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseFareTicket as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseFareTicket - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseFares value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseFares {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping breakdown in query parameter serialization

        // Skipping tickets_total in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseFares value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseFares {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub breakdown: Vec<Vec<models::ResponseFaresBreakdownItem>>,
            pub tickets_total: Vec<Vec<models::ResponseFareTicket>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseFares".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "breakdown" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseFares".to_string()),
                    "tickets_total" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseFares".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseFares".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseFares {
            breakdown: intermediate_rep.breakdown.into_iter().next().ok_or("breakdown missing in ResponseFares".to_string())?,
            tickets_total: intermediate_rep.tickets_total.into_iter().next().ok_or("tickets_total missing in ResponseFares".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseFares> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseFares>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseFares>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseFares - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseFares> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseFares as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseFares - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseFaresBreakdownItem value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseFaresBreakdownItem {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping modes in query parameter serialization


        params.push("route_part_ids".to_string());
        params.push(self.route_part_ids.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        // Skipping tickets in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseFaresBreakdownItem value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseFaresBreakdownItem {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub modes: Vec<Vec<models::ResponseTransportationMode>>,
            pub route_part_ids: Vec<Vec<i32>>,
            pub tickets: Vec<Vec<models::ResponseFareTicket>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseFaresBreakdownItem".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "modes" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseFaresBreakdownItem".to_string()),
                    "route_part_ids" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseFaresBreakdownItem".to_string()),
                    "tickets" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseFaresBreakdownItem".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseFaresBreakdownItem".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseFaresBreakdownItem {
            modes: intermediate_rep.modes.into_iter().next().ok_or("modes missing in ResponseFaresBreakdownItem".to_string())?,
            route_part_ids: intermediate_rep.route_part_ids.into_iter().next().ok_or("route_part_ids missing in ResponseFaresBreakdownItem".to_string())?,
            tickets: intermediate_rep.tickets.into_iter().next().ok_or("tickets missing in ResponseFaresBreakdownItem".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseFaresBreakdownItem> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseFaresBreakdownItem>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseFaresBreakdownItem>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseFaresBreakdownItem - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseFaresBreakdownItem> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseFaresBreakdownItem as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseFaresBreakdownItem - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseFaresFast value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseFaresFast {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping tickets_total in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseFaresFast value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseFaresFast {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub tickets_total: Vec<Vec<models::ResponseFareTicket>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseFaresFast".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "tickets_total" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseFaresFast".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseFaresFast".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseFaresFast {
            tickets_total: intermediate_rep.tickets_total.into_iter().next().ok_or("tickets_total missing in ResponseFaresFast".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseFaresFast> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseFaresFast>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseFaresFast>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseFaresFast - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseFaresFast> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseFaresFast as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseFaresFast - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseGeocoding {
    #[serde(rename = "type")]
    pub type_: String,

    #[serde(rename = "features")]
    pub features: Vec<models::ResponseGeocodingGeoJsonFeature>,

}

impl ResponseGeocoding {
    pub fn new(type_: String, features: Vec<models::ResponseGeocodingGeoJsonFeature>, ) -> ResponseGeocoding {
        ResponseGeocoding {
            type_: type_,
            features: features,
        }
    }
}

/// Converts the ResponseGeocoding value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseGeocoding {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("type".to_string());
        params.push(self.type_.to_string());

        // Skipping features in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseGeocoding value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseGeocoding {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub type_: Vec<String>,
            pub features: Vec<Vec<models::ResponseGeocodingGeoJsonFeature>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseGeocoding".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "features" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseGeocoding".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseGeocoding".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseGeocoding {
            type_: intermediate_rep.type_.into_iter().next().ok_or("type missing in ResponseGeocoding".to_string())?,
            features: intermediate_rep.features.into_iter().next().ok_or("features missing in ResponseGeocoding".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseGeocoding> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseGeocoding>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseGeocoding>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseGeocoding - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseGeocoding> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseGeocoding as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseGeocoding - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseGeocodingGeoJsonFeature {
    #[serde(rename = "type")]
    pub type_: String,

    #[serde(rename = "geometry")]
    pub geometry: models::ResponseGeocodingGeometry,

    #[serde(rename = "properties")]
    pub properties: models::ResponseGeocodingProperties,

}

impl ResponseGeocodingGeoJsonFeature {
    pub fn new(type_: String, geometry: models::ResponseGeocodingGeometry, properties: models::ResponseGeocodingProperties, ) -> ResponseGeocodingGeoJsonFeature {
        ResponseGeocodingGeoJsonFeature {
            type_: type_,
            geometry: geometry,
            properties: properties,
        }
    }
}

/// Converts the ResponseGeocodingGeoJsonFeature value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseGeocodingGeoJsonFeature {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("type".to_string());
        params.push(self.type_.to_string());

        // Skipping geometry in query parameter serialization

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseGeocodingGeoJsonFeature value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseGeocodingGeoJsonFeature {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub type_: Vec<String>,
            pub geometry: Vec<models::ResponseGeocodingGeometry>,
            pub properties: Vec<models::ResponseGeocodingProperties>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseGeocodingGeoJsonFeature".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "geometry" => intermediate_rep.geometry.push(<models::ResponseGeocodingGeometry as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => intermediate_rep.properties.push(<models::ResponseGeocodingProperties as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseGeocodingGeoJsonFeature".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseGeocodingGeoJsonFeature {
            type_: intermediate_rep.type_.into_iter().next().ok_or("type missing in ResponseGeocodingGeoJsonFeature".to_string())?,
            geometry: intermediate_rep.geometry.into_iter().next().ok_or("geometry missing in ResponseGeocodingGeoJsonFeature".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseGeocodingGeoJsonFeature".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseGeocodingGeoJsonFeature> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseGeocodingGeoJsonFeature>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseGeocodingGeoJsonFeature>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseGeocodingGeoJsonFeature - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseGeocodingGeoJsonFeature> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseGeocodingGeoJsonFeature as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseGeocodingGeoJsonFeature - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseGeocodingGeometry {
    #[serde(rename = "type")]
    pub type_: String,

    #[serde(rename = "coordinates")]
    pub coordinates: Vec<f64>,

}

impl ResponseGeocodingGeometry {
    pub fn new(type_: String, coordinates: Vec<f64>, ) -> ResponseGeocodingGeometry {
        ResponseGeocodingGeometry {
            type_: type_,
            coordinates: coordinates,
        }
    }
}

/// Converts the ResponseGeocodingGeometry value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseGeocodingGeometry {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("type".to_string());
        params.push(self.type_.to_string());


        params.push("coordinates".to_string());
        params.push(self.coordinates.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseGeocodingGeometry value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseGeocodingGeometry {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub type_: Vec<String>,
            pub coordinates: Vec<Vec<f64>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseGeocodingGeometry".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "coordinates" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseGeocodingGeometry".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseGeocodingGeometry".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseGeocodingGeometry {
            type_: intermediate_rep.type_.into_iter().next().ok_or("type missing in ResponseGeocodingGeometry".to_string())?,
            coordinates: intermediate_rep.coordinates.into_iter().next().ok_or("coordinates missing in ResponseGeocodingGeometry".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseGeocodingGeometry> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseGeocodingGeometry>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseGeocodingGeometry>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseGeocodingGeometry - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseGeocodingGeometry> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseGeocodingGeometry as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseGeocodingGeometry - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseGeocodingProperties value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseGeocodingProperties {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("name".to_string());
        params.push(self.name.to_string());


        params.push("label".to_string());
        params.push(self.label.to_string());


        if let Some(ref score) = self.score {
            params.push("score".to_string());
            params.push(score.to_string());
        }


        if let Some(ref house_number) = self.house_number {
            params.push("house_number".to_string());
            params.push(house_number.to_string());
        }


        if let Some(ref street) = self.street {
            params.push("street".to_string());
            params.push(street.to_string());
        }


        if let Some(ref region) = self.region {
            params.push("region".to_string());
            params.push(region.to_string());
        }


        if let Some(ref region_code) = self.region_code {
            params.push("region_code".to_string());
            params.push(region_code.to_string());
        }


        if let Some(ref neighbourhood) = self.neighbourhood {
            params.push("neighbourhood".to_string());
            params.push(neighbourhood.to_string());
        }


        if let Some(ref county) = self.county {
            params.push("county".to_string());
            params.push(county.to_string());
        }


        if let Some(ref macroregion) = self.macroregion {
            params.push("macroregion".to_string());
            params.push(macroregion.to_string());
        }


        if let Some(ref city) = self.city {
            params.push("city".to_string());
            params.push(city.to_string());
        }


        if let Some(ref country) = self.country {
            params.push("country".to_string());
            params.push(country.to_string());
        }


        if let Some(ref country_code) = self.country_code {
            params.push("country_code".to_string());
            params.push(country_code.to_string());
        }


        if let Some(ref continent) = self.continent {
            params.push("continent".to_string());
            params.push(continent.to_string());
        }


        if let Some(ref postcode) = self.postcode {
            params.push("postcode".to_string());
            params.push(postcode.to_string());
        }

        // Skipping features in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseGeocodingProperties value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseGeocodingProperties {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub name: Vec<String>,
            pub label: Vec<String>,
            pub score: Vec<f64>,
            pub house_number: Vec<String>,
            pub street: Vec<String>,
            pub region: Vec<String>,
            pub region_code: Vec<String>,
            pub neighbourhood: Vec<String>,
            pub county: Vec<String>,
            pub macroregion: Vec<String>,
            pub city: Vec<String>,
            pub country: Vec<String>,
            pub country_code: Vec<String>,
            pub continent: Vec<String>,
            pub postcode: Vec<String>,
            pub features: Vec<models::ResponseMapInfoFeatures>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseGeocodingProperties".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "label" => intermediate_rep.label.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "score" => intermediate_rep.score.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "house_number" => intermediate_rep.house_number.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "street" => intermediate_rep.street.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "region" => intermediate_rep.region.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "region_code" => intermediate_rep.region_code.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "neighbourhood" => intermediate_rep.neighbourhood.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "county" => intermediate_rep.county.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "macroregion" => intermediate_rep.macroregion.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "city" => intermediate_rep.city.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "country" => intermediate_rep.country.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "country_code" => intermediate_rep.country_code.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "continent" => intermediate_rep.continent.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "postcode" => intermediate_rep.postcode.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "features" => intermediate_rep.features.push(<models::ResponseMapInfoFeatures as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseGeocodingProperties".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseGeocodingProperties {
            name: intermediate_rep.name.into_iter().next().ok_or("name missing in ResponseGeocodingProperties".to_string())?,
            label: intermediate_rep.label.into_iter().next().ok_or("label missing in ResponseGeocodingProperties".to_string())?,
            score: intermediate_rep.score.into_iter().next(),
            house_number: intermediate_rep.house_number.into_iter().next(),
            street: intermediate_rep.street.into_iter().next(),
            region: intermediate_rep.region.into_iter().next(),
            region_code: intermediate_rep.region_code.into_iter().next(),
            neighbourhood: intermediate_rep.neighbourhood.into_iter().next(),
            county: intermediate_rep.county.into_iter().next(),
            macroregion: intermediate_rep.macroregion.into_iter().next(),
            city: intermediate_rep.city.into_iter().next(),
            country: intermediate_rep.country.into_iter().next(),
            country_code: intermediate_rep.country_code.into_iter().next(),
            continent: intermediate_rep.continent.into_iter().next(),
            postcode: intermediate_rep.postcode.into_iter().next(),
            features: intermediate_rep.features.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseGeocodingProperties> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseGeocodingProperties>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseGeocodingProperties>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseGeocodingProperties - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseGeocodingProperties> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseGeocodingProperties as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseGeocodingProperties - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseLocalTime(String);

impl std::convert::From<String> for ResponseLocalTime {
    fn from(x: String) -> Self {
        ResponseLocalTime(x)
    }
}

impl std::string::ToString for ResponseLocalTime {
    fn to_string(&self) -> String {
       self.0.to_string()
    }
}

impl std::str::FromStr for ResponseLocalTime {
    type Err = std::string::ParseError;
    fn from_str(x: &str) -> std::result::Result<Self, Self::Err> {
        std::result::Result::Ok(ResponseLocalTime(x.to_string()))
    }
}

impl std::convert::From<ResponseLocalTime> for String {
    fn from(x: ResponseLocalTime) -> Self {
        x.0
    }
}

impl std::ops::Deref for ResponseLocalTime {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl std::ops::DerefMut for ResponseLocalTime {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseLocationId(String);

impl std::convert::From<String> for ResponseLocationId {
    fn from(x: String) -> Self {
        ResponseLocationId(x)
    }
}

impl std::string::ToString for ResponseLocationId {
    fn to_string(&self) -> String {
       self.0.to_string()
    }
}

impl std::str::FromStr for ResponseLocationId {
    type Err = std::string::ParseError;
    fn from_str(x: &str) -> std::result::Result<Self, Self::Err> {
        std::result::Result::Ok(ResponseLocationId(x.to_string()))
    }
}

impl std::convert::From<ResponseLocationId> for String {
    fn from(x: ResponseLocationId) -> Self {
        x.0
    }
}

impl std::ops::Deref for ResponseLocationId {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl std::ops::DerefMut for ResponseLocationId {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseMapInfo value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseMapInfo {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping maps in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseMapInfo value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseMapInfo {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub maps: Vec<Vec<models::ResponseMapInfoMap>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseMapInfo".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "maps" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseMapInfo".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseMapInfo".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseMapInfo {
            maps: intermediate_rep.maps.into_iter().next().ok_or("maps missing in ResponseMapInfo".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseMapInfo> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseMapInfo>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseMapInfo>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseMapInfo - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseMapInfo> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseMapInfo as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseMapInfo - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseMapInfoFeatures value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseMapInfoFeatures {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping public_transport in query parameter serialization


        params.push("fares".to_string());
        params.push(self.fares.to_string());


        params.push("postcodes".to_string());
        params.push(self.postcodes.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseMapInfoFeatures value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseMapInfoFeatures {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub public_transport: Vec<models::ResponseMapInfoFeaturesPublicTransport>,
            pub fares: Vec<bool>,
            pub postcodes: Vec<bool>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseMapInfoFeatures".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "public_transport" => intermediate_rep.public_transport.push(<models::ResponseMapInfoFeaturesPublicTransport as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fares" => intermediate_rep.fares.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "postcodes" => intermediate_rep.postcodes.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseMapInfoFeatures".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseMapInfoFeatures {
            public_transport: intermediate_rep.public_transport.into_iter().next(),
            fares: intermediate_rep.fares.into_iter().next().ok_or("fares missing in ResponseMapInfoFeatures".to_string())?,
            postcodes: intermediate_rep.postcodes.into_iter().next().ok_or("postcodes missing in ResponseMapInfoFeatures".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseMapInfoFeatures> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseMapInfoFeatures>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseMapInfoFeatures>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseMapInfoFeatures - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseMapInfoFeatures> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseMapInfoFeatures as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseMapInfoFeatures - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseMapInfoFeaturesPublicTransport {
    #[serde(rename = "date_start")]
    pub date_start: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "date_end")]
    pub date_end: chrono::DateTime::<chrono::Utc>,

}

impl ResponseMapInfoFeaturesPublicTransport {
    pub fn new(date_start: chrono::DateTime::<chrono::Utc>, date_end: chrono::DateTime::<chrono::Utc>, ) -> ResponseMapInfoFeaturesPublicTransport {
        ResponseMapInfoFeaturesPublicTransport {
            date_start: date_start,
            date_end: date_end,
        }
    }
}

/// Converts the ResponseMapInfoFeaturesPublicTransport value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseMapInfoFeaturesPublicTransport {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping date_start in query parameter serialization

        // Skipping date_end in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseMapInfoFeaturesPublicTransport value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseMapInfoFeaturesPublicTransport {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub date_start: Vec<chrono::DateTime::<chrono::Utc>>,
            pub date_end: Vec<chrono::DateTime::<chrono::Utc>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseMapInfoFeaturesPublicTransport".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "date_start" => intermediate_rep.date_start.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "date_end" => intermediate_rep.date_end.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseMapInfoFeaturesPublicTransport".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseMapInfoFeaturesPublicTransport {
            date_start: intermediate_rep.date_start.into_iter().next().ok_or("date_start missing in ResponseMapInfoFeaturesPublicTransport".to_string())?,
            date_end: intermediate_rep.date_end.into_iter().next().ok_or("date_end missing in ResponseMapInfoFeaturesPublicTransport".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseMapInfoFeaturesPublicTransport> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseMapInfoFeaturesPublicTransport>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseMapInfoFeaturesPublicTransport>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseMapInfoFeaturesPublicTransport - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseMapInfoFeaturesPublicTransport> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseMapInfoFeaturesPublicTransport as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseMapInfoFeaturesPublicTransport - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseMapInfoMap value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseMapInfoMap {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("name".to_string());
        params.push(self.name.to_string());

        // Skipping features in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseMapInfoMap value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseMapInfoMap {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub name: Vec<String>,
            pub features: Vec<models::ResponseMapInfoFeatures>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseMapInfoMap".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "name" => intermediate_rep.name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "features" => intermediate_rep.features.push(<models::ResponseMapInfoFeatures as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseMapInfoMap".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseMapInfoMap {
            name: intermediate_rep.name.into_iter().next().ok_or("name missing in ResponseMapInfoMap".to_string())?,
            features: intermediate_rep.features.into_iter().next().ok_or("features missing in ResponseMapInfoMap".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseMapInfoMap> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseMapInfoMap>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseMapInfoMap>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseMapInfoMap - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseMapInfoMap> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseMapInfoMap as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseMapInfoMap - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseRoute {
    #[serde(rename = "departure_time")]
    pub departure_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "arrival_time")]
    pub arrival_time: chrono::DateTime::<chrono::Utc>,

    #[serde(rename = "parts")]
    pub parts: Vec<models::ResponseRoutePart>,

}

impl ResponseRoute {
    pub fn new(departure_time: chrono::DateTime::<chrono::Utc>, arrival_time: chrono::DateTime::<chrono::Utc>, parts: Vec<models::ResponseRoutePart>, ) -> ResponseRoute {
        ResponseRoute {
            departure_time: departure_time,
            arrival_time: arrival_time,
            parts: parts,
        }
    }
}

/// Converts the ResponseRoute value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseRoute {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping departure_time in query parameter serialization

        // Skipping arrival_time in query parameter serialization

        // Skipping parts in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseRoute value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseRoute {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub departure_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub arrival_time: Vec<chrono::DateTime::<chrono::Utc>>,
            pub parts: Vec<Vec<models::ResponseRoutePart>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseRoute".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "departure_time" => intermediate_rep.departure_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_time" => intermediate_rep.arrival_time.push(<chrono::DateTime::<chrono::Utc> as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "parts" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseRoute".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseRoute".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseRoute {
            departure_time: intermediate_rep.departure_time.into_iter().next().ok_or("departure_time missing in ResponseRoute".to_string())?,
            arrival_time: intermediate_rep.arrival_time.into_iter().next().ok_or("arrival_time missing in ResponseRoute".to_string())?,
            parts: intermediate_rep.parts.into_iter().next().ok_or("parts missing in ResponseRoute".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseRoute> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseRoute>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseRoute>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseRoute - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseRoute> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseRoute as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseRoute - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseRoutePart {
    #[serde(rename = "id")]
    pub id: String,

    // Note: inline enums are not fully supported by openapi-generator
    #[serde(rename = "type")]
    pub type_: String,

    #[serde(rename = "mode")]
    pub mode: models::ResponseTransportationMode,

    #[serde(rename = "directions")]
    pub directions: String,

    #[serde(rename = "distance")]
    pub distance: isize,

    #[serde(rename = "travel_time")]
    pub travel_time: isize,

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
    pub num_stops: Option<isize>,

}

impl ResponseRoutePart {
    pub fn new(id: String, type_: String, mode: models::ResponseTransportationMode, directions: String, distance: isize, travel_time: isize, coords: Vec<models::Coords>, ) -> ResponseRoutePart {
        ResponseRoutePart {
            id: id,
            type_: type_,
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

/// Converts the ResponseRoutePart value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseRoutePart {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("type".to_string());
        params.push(self.type_.to_string());

        // Skipping mode in query parameter serialization


        params.push("directions".to_string());
        params.push(self.directions.to_string());


        params.push("distance".to_string());
        params.push(self.distance.to_string());


        params.push("travel_time".to_string());
        params.push(self.travel_time.to_string());

        // Skipping coords in query parameter serialization


        if let Some(ref direction) = self.direction {
            params.push("direction".to_string());
            params.push(direction.to_string());
        }


        if let Some(ref road) = self.road {
            params.push("road".to_string());
            params.push(road.to_string());
        }


        if let Some(ref turn) = self.turn {
            params.push("turn".to_string());
            params.push(turn.to_string());
        }


        if let Some(ref line) = self.line {
            params.push("line".to_string());
            params.push(line.to_string());
        }


        if let Some(ref departure_station) = self.departure_station {
            params.push("departure_station".to_string());
            params.push(departure_station.to_string());
        }


        if let Some(ref arrival_station) = self.arrival_station {
            params.push("arrival_station".to_string());
            params.push(arrival_station.to_string());
        }


        if let Some(ref departs_at) = self.departs_at {
            params.push("departs_at".to_string());
            params.push(departs_at.to_string());
        }


        if let Some(ref arrives_at) = self.arrives_at {
            params.push("arrives_at".to_string());
            params.push(arrives_at.to_string());
        }


        if let Some(ref num_stops) = self.num_stops {
            params.push("num_stops".to_string());
            params.push(num_stops.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseRoutePart value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseRoutePart {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub type_: Vec<String>,
            pub mode: Vec<models::ResponseTransportationMode>,
            pub directions: Vec<String>,
            pub distance: Vec<isize>,
            pub travel_time: Vec<isize>,
            pub coords: Vec<Vec<models::Coords>>,
            pub direction: Vec<String>,
            pub road: Vec<String>,
            pub turn: Vec<String>,
            pub line: Vec<String>,
            pub departure_station: Vec<String>,
            pub arrival_station: Vec<String>,
            pub departs_at: Vec<String>,
            pub arrives_at: Vec<String>,
            pub num_stops: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseRoutePart".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "type" => intermediate_rep.type_.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "mode" => intermediate_rep.mode.push(<models::ResponseTransportationMode as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "directions" => intermediate_rep.directions.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "distance" => intermediate_rep.distance.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time" => intermediate_rep.travel_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "coords" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseRoutePart".to_string()),
                    "direction" => intermediate_rep.direction.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "road" => intermediate_rep.road.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "turn" => intermediate_rep.turn.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "line" => intermediate_rep.line.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departure_station" => intermediate_rep.departure_station.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrival_station" => intermediate_rep.arrival_station.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "departs_at" => intermediate_rep.departs_at.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "arrives_at" => intermediate_rep.arrives_at.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "num_stops" => intermediate_rep.num_stops.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseRoutePart".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseRoutePart {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in ResponseRoutePart".to_string())?,
            type_: intermediate_rep.type_.into_iter().next().ok_or("type missing in ResponseRoutePart".to_string())?,
            mode: intermediate_rep.mode.into_iter().next().ok_or("mode missing in ResponseRoutePart".to_string())?,
            directions: intermediate_rep.directions.into_iter().next().ok_or("directions missing in ResponseRoutePart".to_string())?,
            distance: intermediate_rep.distance.into_iter().next().ok_or("distance missing in ResponseRoutePart".to_string())?,
            travel_time: intermediate_rep.travel_time.into_iter().next().ok_or("travel_time missing in ResponseRoutePart".to_string())?,
            coords: intermediate_rep.coords.into_iter().next().ok_or("coords missing in ResponseRoutePart".to_string())?,
            direction: intermediate_rep.direction.into_iter().next(),
            road: intermediate_rep.road.into_iter().next(),
            turn: intermediate_rep.turn.into_iter().next(),
            line: intermediate_rep.line.into_iter().next(),
            departure_station: intermediate_rep.departure_station.into_iter().next(),
            arrival_station: intermediate_rep.arrival_station.into_iter().next(),
            departs_at: intermediate_rep.departs_at.into_iter().next(),
            arrives_at: intermediate_rep.arrives_at.into_iter().next(),
            num_stops: intermediate_rep.num_stops.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseRoutePart> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseRoutePart>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseRoutePart>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseRoutePart - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseRoutePart> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseRoutePart as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseRoutePart - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseRoutes value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseRoutes {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseRoutes value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseRoutes {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseRoutesResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseRoutes".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseRoutes".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseRoutes".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseRoutes {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseRoutes".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseRoutes> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseRoutes>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseRoutes>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseRoutes - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseRoutes> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseRoutes as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseRoutes - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseRoutesLocation value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseRoutesLocation {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseRoutesLocation value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseRoutesLocation {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub properties: Vec<Vec<models::ResponseRoutesProperties>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseRoutesLocation".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseRoutesLocation".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseRoutesLocation".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseRoutesLocation {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in ResponseRoutesLocation".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseRoutesLocation".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseRoutesLocation> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseRoutesLocation>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseRoutesLocation>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseRoutesLocation - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseRoutesLocation> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseRoutesLocation as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseRoutesLocation - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseRoutesProperties {
    #[serde(rename = "travel_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time: Option<isize>,

    #[serde(rename = "distance")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub distance: Option<isize>,

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

/// Converts the ResponseRoutesProperties value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseRoutesProperties {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref travel_time) = self.travel_time {
            params.push("travel_time".to_string());
            params.push(travel_time.to_string());
        }


        if let Some(ref distance) = self.distance {
            params.push("distance".to_string());
            params.push(distance.to_string());
        }

        // Skipping fares in query parameter serialization

        // Skipping route in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseRoutesProperties value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseRoutesProperties {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub travel_time: Vec<isize>,
            pub distance: Vec<isize>,
            pub fares: Vec<models::ResponseFares>,
            pub route: Vec<models::ResponseRoute>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseRoutesProperties".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "travel_time" => intermediate_rep.travel_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "distance" => intermediate_rep.distance.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fares" => intermediate_rep.fares.push(<models::ResponseFares as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "route" => intermediate_rep.route.push(<models::ResponseRoute as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseRoutesProperties".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseRoutesProperties {
            travel_time: intermediate_rep.travel_time.into_iter().next(),
            distance: intermediate_rep.distance.into_iter().next(),
            fares: intermediate_rep.fares.into_iter().next(),
            route: intermediate_rep.route.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseRoutesProperties> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseRoutesProperties>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseRoutesProperties>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseRoutesProperties - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseRoutesProperties> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseRoutesProperties as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseRoutesProperties - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseRoutesResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseRoutesResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());

        // Skipping locations in query parameter serialization


        params.push("unreachable".to_string());
        params.push(self.unreachable.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseRoutesResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseRoutesResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub locations: Vec<Vec<models::ResponseRoutesLocation>>,
            pub unreachable: Vec<Vec<String>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseRoutesResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "locations" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseRoutesResult".to_string()),
                    "unreachable" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseRoutesResult".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseRoutesResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseRoutesResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseRoutesResult".to_string())?,
            locations: intermediate_rep.locations.into_iter().next().ok_or("locations missing in ResponseRoutesResult".to_string())?,
            unreachable: intermediate_rep.unreachable.into_iter().next().ok_or("unreachable missing in ResponseRoutesResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseRoutesResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseRoutesResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseRoutesResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseRoutesResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseRoutesResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseRoutesResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseRoutesResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseSearchId(String);

impl std::convert::From<String> for ResponseSearchId {
    fn from(x: String) -> Self {
        ResponseSearchId(x)
    }
}

impl std::string::ToString for ResponseSearchId {
    fn to_string(&self) -> String {
       self.0.to_string()
    }
}

impl std::str::FromStr for ResponseSearchId {
    type Err = std::string::ParseError;
    fn from_str(x: &str) -> std::result::Result<Self, Self::Err> {
        std::result::Result::Ok(ResponseSearchId(x.to_string()))
    }
}

impl std::convert::From<ResponseSearchId> for String {
    fn from(x: ResponseSearchId) -> Self {
        x.0
    }
}

impl std::ops::Deref for ResponseSearchId {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl std::ops::DerefMut for ResponseSearchId {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseShape value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseShape {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping shell in query parameter serialization

        // Skipping holes in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseShape value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseShape {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub shell: Vec<Vec<models::Coords>>,
            pub holes: Vec<Vec<Vec<models::Coords>>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseShape".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "shell" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseShape".to_string()),
                    "holes" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseShape".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseShape".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseShape {
            shell: intermediate_rep.shell.into_iter().next().ok_or("shell missing in ResponseShape".to_string())?,
            holes: intermediate_rep.holes.into_iter().next().ok_or("holes missing in ResponseShape".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseShape> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseShape>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseShape>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseShape - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseShape> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseShape as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseShape - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseSupportedLocation value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseSupportedLocation {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());


        params.push("map_name".to_string());
        params.push(self.map_name.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseSupportedLocation value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseSupportedLocation {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub map_name: Vec<String>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseSupportedLocation".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "map_name" => intermediate_rep.map_name.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseSupportedLocation".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseSupportedLocation {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in ResponseSupportedLocation".to_string())?,
            map_name: intermediate_rep.map_name.into_iter().next().ok_or("map_name missing in ResponseSupportedLocation".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseSupportedLocation> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseSupportedLocation>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseSupportedLocation>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseSupportedLocation - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseSupportedLocation> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseSupportedLocation as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseSupportedLocation - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseSupportedLocations value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseSupportedLocations {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping locations in query parameter serialization


        params.push("unsupported_locations".to_string());
        params.push(self.unsupported_locations.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseSupportedLocations value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseSupportedLocations {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub locations: Vec<Vec<models::ResponseSupportedLocation>>,
            pub unsupported_locations: Vec<Vec<String>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseSupportedLocations".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "locations" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseSupportedLocations".to_string()),
                    "unsupported_locations" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseSupportedLocations".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseSupportedLocations".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseSupportedLocations {
            locations: intermediate_rep.locations.into_iter().next().ok_or("locations missing in ResponseSupportedLocations".to_string())?,
            unsupported_locations: intermediate_rep.unsupported_locations.into_iter().next().ok_or("unsupported_locations missing in ResponseSupportedLocations".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseSupportedLocations> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseSupportedLocations>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseSupportedLocations>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseSupportedLocations - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseSupportedLocations> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseSupportedLocations as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseSupportedLocations - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilter value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilter {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilter value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilter {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseTimeFilterResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilter".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilter".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilter".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilter {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseTimeFilter".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilter> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilter>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilter>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilter - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilter> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilter as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilter - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterFast value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterFast {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterFast value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterFast {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseTimeFilterFastResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterFast".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterFast".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterFast".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterFast {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseTimeFilterFast".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterFast> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterFast>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterFast>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterFast - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterFast> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterFast as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterFast - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterFastLocation value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterFastLocation {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterFastLocation value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterFastLocation {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub properties: Vec<Vec<models::ResponseTimeFilterFastProperties>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterFastLocation".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterFastLocation".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterFastLocation".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterFastLocation {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in ResponseTimeFilterFastLocation".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseTimeFilterFastLocation".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterFastLocation> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterFastLocation>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterFastLocation>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterFastLocation - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterFastLocation> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterFastLocation as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterFastLocation - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseTimeFilterFastProperties {
    #[serde(rename = "travel_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time: Option<isize>,

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

/// Converts the ResponseTimeFilterFastProperties value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterFastProperties {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref travel_time) = self.travel_time {
            params.push("travel_time".to_string());
            params.push(travel_time.to_string());
        }

        // Skipping fares in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterFastProperties value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterFastProperties {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub travel_time: Vec<isize>,
            pub fares: Vec<models::ResponseFaresFast>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterFastProperties".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "travel_time" => intermediate_rep.travel_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "fares" => intermediate_rep.fares.push(<models::ResponseFaresFast as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterFastProperties".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterFastProperties {
            travel_time: intermediate_rep.travel_time.into_iter().next(),
            fares: intermediate_rep.fares.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterFastProperties> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterFastProperties>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterFastProperties>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterFastProperties - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterFastProperties> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterFastProperties as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterFastProperties - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterFastResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterFastResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());

        // Skipping locations in query parameter serialization


        params.push("unreachable".to_string());
        params.push(self.unreachable.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterFastResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterFastResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub locations: Vec<Vec<models::ResponseTimeFilterFastLocation>>,
            pub unreachable: Vec<Vec<String>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterFastResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "locations" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterFastResult".to_string()),
                    "unreachable" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterFastResult".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterFastResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterFastResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseTimeFilterFastResult".to_string())?,
            locations: intermediate_rep.locations.into_iter().next().ok_or("locations missing in ResponseTimeFilterFastResult".to_string())?,
            unreachable: intermediate_rep.unreachable.into_iter().next().ok_or("unreachable missing in ResponseTimeFilterFastResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterFastResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterFastResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterFastResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterFastResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterFastResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterFastResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterFastResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterLocation value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterLocation {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("id".to_string());
        params.push(self.id.to_string());

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterLocation value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterLocation {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub id: Vec<String>,
            pub properties: Vec<Vec<models::ResponseTimeFilterProperties>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterLocation".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "id" => intermediate_rep.id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterLocation".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterLocation".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterLocation {
            id: intermediate_rep.id.into_iter().next().ok_or("id missing in ResponseTimeFilterLocation".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseTimeFilterLocation".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterLocation> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterLocation>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterLocation>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterLocation - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterLocation> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterLocation as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterLocation - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcode value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcode {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("code".to_string());
        params.push(self.code.to_string());

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcode value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcode {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub code: Vec<String>,
            pub properties: Vec<Vec<models::ResponseTimeFilterPostcodesProperties>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcode".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "code" => intermediate_rep.code.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterPostcode".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcode".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcode {
            code: intermediate_rep.code.into_iter().next().ok_or("code missing in ResponseTimeFilterPostcode".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseTimeFilterPostcode".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcode> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcode>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcode>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcode - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcode> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcode as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcode - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodeDistrict value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodeDistrict {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("code".to_string());
        params.push(self.code.to_string());

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodeDistrict value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodeDistrict {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub code: Vec<String>,
            pub properties: Vec<models::ResponseTimeFilterPostcodeDistrictProperties>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodeDistrict".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "code" => intermediate_rep.code.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => intermediate_rep.properties.push(<models::ResponseTimeFilterPostcodeDistrictProperties as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodeDistrict".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodeDistrict {
            code: intermediate_rep.code.into_iter().next().ok_or("code missing in ResponseTimeFilterPostcodeDistrict".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseTimeFilterPostcodeDistrict".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrict> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrict>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrict>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodeDistrict - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrict> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodeDistrict as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodeDistrict - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodeDistrictProperties value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodeDistrictProperties {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping travel_time_reachable in query parameter serialization

        // Skipping travel_time_all in query parameter serialization


        if let Some(ref coverage) = self.coverage {
            params.push("coverage".to_string());
            params.push(coverage.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodeDistrictProperties value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodeDistrictProperties {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub travel_time_reachable: Vec<models::ResponseTravelTimeStatistics>,
            pub travel_time_all: Vec<models::ResponseTravelTimeStatistics>,
            pub coverage: Vec<f64>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodeDistrictProperties".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "travel_time_reachable" => intermediate_rep.travel_time_reachable.push(<models::ResponseTravelTimeStatistics as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time_all" => intermediate_rep.travel_time_all.push(<models::ResponseTravelTimeStatistics as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "coverage" => intermediate_rep.coverage.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodeDistrictProperties".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodeDistrictProperties {
            travel_time_reachable: intermediate_rep.travel_time_reachable.into_iter().next(),
            travel_time_all: intermediate_rep.travel_time_all.into_iter().next(),
            coverage: intermediate_rep.coverage.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrictProperties> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrictProperties>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrictProperties>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodeDistrictProperties - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrictProperties> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodeDistrictProperties as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodeDistrictProperties - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodeDistricts value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodeDistricts {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodeDistricts value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodeDistricts {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseTimeFilterPostcodeDistrictsResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodeDistricts".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterPostcodeDistricts".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodeDistricts".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodeDistricts {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseTimeFilterPostcodeDistricts".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodeDistricts> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodeDistricts>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodeDistricts>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodeDistricts - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodeDistricts> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodeDistricts as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodeDistricts - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodeDistrictsResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodeDistrictsResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());

        // Skipping districts in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodeDistrictsResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodeDistrictsResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub districts: Vec<Vec<models::ResponseTimeFilterPostcodeDistrict>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodeDistrictsResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "districts" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterPostcodeDistrictsResult".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodeDistrictsResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodeDistrictsResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseTimeFilterPostcodeDistrictsResult".to_string())?,
            districts: intermediate_rep.districts.into_iter().next().ok_or("districts missing in ResponseTimeFilterPostcodeDistrictsResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrictsResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrictsResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrictsResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodeDistrictsResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodeDistrictsResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodeDistrictsResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodeDistrictsResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodeSector value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodeSector {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("code".to_string());
        params.push(self.code.to_string());

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodeSector value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodeSector {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub code: Vec<String>,
            pub properties: Vec<models::ResponseTimeFilterPostcodeSectorProperties>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodeSector".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "code" => intermediate_rep.code.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => intermediate_rep.properties.push(<models::ResponseTimeFilterPostcodeSectorProperties as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodeSector".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodeSector {
            code: intermediate_rep.code.into_iter().next().ok_or("code missing in ResponseTimeFilterPostcodeSector".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseTimeFilterPostcodeSector".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodeSector> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodeSector>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodeSector>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodeSector - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodeSector> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodeSector as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodeSector - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodeSectorProperties value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodeSectorProperties {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping travel_time_reachable in query parameter serialization

        // Skipping travel_time_all in query parameter serialization


        if let Some(ref coverage) = self.coverage {
            params.push("coverage".to_string());
            params.push(coverage.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodeSectorProperties value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodeSectorProperties {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub travel_time_reachable: Vec<models::ResponseTravelTimeStatistics>,
            pub travel_time_all: Vec<models::ResponseTravelTimeStatistics>,
            pub coverage: Vec<f64>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodeSectorProperties".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "travel_time_reachable" => intermediate_rep.travel_time_reachable.push(<models::ResponseTravelTimeStatistics as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "travel_time_all" => intermediate_rep.travel_time_all.push(<models::ResponseTravelTimeStatistics as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "coverage" => intermediate_rep.coverage.push(<f64 as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodeSectorProperties".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodeSectorProperties {
            travel_time_reachable: intermediate_rep.travel_time_reachable.into_iter().next(),
            travel_time_all: intermediate_rep.travel_time_all.into_iter().next(),
            coverage: intermediate_rep.coverage.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodeSectorProperties> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodeSectorProperties>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodeSectorProperties>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodeSectorProperties - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodeSectorProperties> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodeSectorProperties as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodeSectorProperties - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodeSectors value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodeSectors {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodeSectors value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodeSectors {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseTimeFilterPostcodeSectorsResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodeSectors".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterPostcodeSectors".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodeSectors".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodeSectors {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseTimeFilterPostcodeSectors".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodeSectors> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodeSectors>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodeSectors>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodeSectors - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodeSectors> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodeSectors as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodeSectors - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodeSectorsResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodeSectorsResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());

        // Skipping sectors in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodeSectorsResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodeSectorsResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub sectors: Vec<Vec<models::ResponseTimeFilterPostcodeSector>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodeSectorsResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "sectors" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterPostcodeSectorsResult".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodeSectorsResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodeSectorsResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseTimeFilterPostcodeSectorsResult".to_string())?,
            sectors: intermediate_rep.sectors.into_iter().next().ok_or("sectors missing in ResponseTimeFilterPostcodeSectorsResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodeSectorsResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodeSectorsResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodeSectorsResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodeSectorsResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodeSectorsResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodeSectorsResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodeSectorsResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodes value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodes {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodes value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodes {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseTimeFilterPostcodesResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodes".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterPostcodes".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodes".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodes {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseTimeFilterPostcodes".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodes> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodes>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodes>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodes - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodes> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodes as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodes - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseTimeFilterPostcodesProperties {
    #[serde(rename = "travel_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time: Option<isize>,

    #[serde(rename = "distance")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub distance: Option<isize>,

}

impl ResponseTimeFilterPostcodesProperties {
    pub fn new() -> ResponseTimeFilterPostcodesProperties {
        ResponseTimeFilterPostcodesProperties {
            travel_time: None,
            distance: None,
        }
    }
}

/// Converts the ResponseTimeFilterPostcodesProperties value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodesProperties {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref travel_time) = self.travel_time {
            params.push("travel_time".to_string());
            params.push(travel_time.to_string());
        }


        if let Some(ref distance) = self.distance {
            params.push("distance".to_string());
            params.push(distance.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodesProperties value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodesProperties {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub travel_time: Vec<isize>,
            pub distance: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodesProperties".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "travel_time" => intermediate_rep.travel_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "distance" => intermediate_rep.distance.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodesProperties".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodesProperties {
            travel_time: intermediate_rep.travel_time.into_iter().next(),
            distance: intermediate_rep.distance.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodesProperties> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodesProperties>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodesProperties>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodesProperties - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodesProperties> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodesProperties as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodesProperties - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterPostcodesResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterPostcodesResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());

        // Skipping postcodes in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterPostcodesResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterPostcodesResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub postcodes: Vec<Vec<models::ResponseTimeFilterPostcode>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterPostcodesResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "postcodes" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterPostcodesResult".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterPostcodesResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterPostcodesResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseTimeFilterPostcodesResult".to_string())?,
            postcodes: intermediate_rep.postcodes.into_iter().next().ok_or("postcodes missing in ResponseTimeFilterPostcodesResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterPostcodesResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterPostcodesResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterPostcodesResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterPostcodesResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterPostcodesResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterPostcodesResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterPostcodesResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseTimeFilterProperties {
    #[serde(rename = "travel_time")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub travel_time: Option<isize>,

    #[serde(rename = "distance")]
    #[serde(skip_serializing_if="Option::is_none")]
    pub distance: Option<isize>,

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

/// Converts the ResponseTimeFilterProperties value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterProperties {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref travel_time) = self.travel_time {
            params.push("travel_time".to_string());
            params.push(travel_time.to_string());
        }


        if let Some(ref distance) = self.distance {
            params.push("distance".to_string());
            params.push(distance.to_string());
        }

        // Skipping distance_breakdown in query parameter serialization

        // Skipping fares in query parameter serialization

        // Skipping route in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterProperties value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterProperties {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub travel_time: Vec<isize>,
            pub distance: Vec<isize>,
            pub distance_breakdown: Vec<Vec<models::ResponseDistanceBreakdownItem>>,
            pub fares: Vec<models::ResponseFares>,
            pub route: Vec<models::ResponseRoute>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterProperties".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "travel_time" => intermediate_rep.travel_time.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "distance" => intermediate_rep.distance.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "distance_breakdown" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterProperties".to_string()),
                    "fares" => intermediate_rep.fares.push(<models::ResponseFares as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "route" => intermediate_rep.route.push(<models::ResponseRoute as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterProperties".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterProperties {
            travel_time: intermediate_rep.travel_time.into_iter().next(),
            distance: intermediate_rep.distance.into_iter().next(),
            distance_breakdown: intermediate_rep.distance_breakdown.into_iter().next(),
            fares: intermediate_rep.fares.into_iter().next(),
            route: intermediate_rep.route.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterProperties> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterProperties>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterProperties>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterProperties - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterProperties> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterProperties as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterProperties - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeFilterResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeFilterResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());

        // Skipping locations in query parameter serialization


        params.push("unreachable".to_string());
        params.push(self.unreachable.iter().map(|x| x.to_string()).collect::<Vec<_>>().join(",").to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeFilterResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeFilterResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub locations: Vec<Vec<models::ResponseTimeFilterLocation>>,
            pub unreachable: Vec<Vec<String>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeFilterResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "locations" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterResult".to_string()),
                    "unreachable" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeFilterResult".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeFilterResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeFilterResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseTimeFilterResult".to_string())?,
            locations: intermediate_rep.locations.into_iter().next().ok_or("locations missing in ResponseTimeFilterResult".to_string())?,
            unreachable: intermediate_rep.unreachable.into_iter().next().ok_or("unreachable missing in ResponseTimeFilterResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeFilterResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeFilterResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeFilterResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeFilterResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeFilterResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeFilterResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeFilterResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeMap value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeMap {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeMap value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeMap {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseTimeMapResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeMap".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeMap".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeMap".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeMap {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseTimeMap".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeMap> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeMap>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeMap>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeMap - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeMap> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeMap as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeMap - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeMapBoundingBoxes value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeMapBoundingBoxes {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeMapBoundingBoxes value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeMapBoundingBoxes {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseTimeMapBoundingBoxesResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeMapBoundingBoxes".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeMapBoundingBoxes".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeMapBoundingBoxes".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeMapBoundingBoxes {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseTimeMapBoundingBoxes".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeMapBoundingBoxes> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeMapBoundingBoxes>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeMapBoundingBoxes>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeMapBoundingBoxes - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeMapBoundingBoxes> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeMapBoundingBoxes as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeMapBoundingBoxes - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeMapBoundingBoxesResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeMapBoundingBoxesResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());

        // Skipping bounding_boxes in query parameter serialization

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeMapBoundingBoxesResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeMapBoundingBoxesResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub bounding_boxes: Vec<Vec<models::ResponseBoundingBox>>,
            pub properties: Vec<models::ResponseTimeMapProperties>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeMapBoundingBoxesResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "bounding_boxes" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeMapBoundingBoxesResult".to_string()),
                    "properties" => intermediate_rep.properties.push(<models::ResponseTimeMapProperties as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeMapBoundingBoxesResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeMapBoundingBoxesResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseTimeMapBoundingBoxesResult".to_string())?,
            bounding_boxes: intermediate_rep.bounding_boxes.into_iter().next().ok_or("bounding_boxes missing in ResponseTimeMapBoundingBoxesResult".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseTimeMapBoundingBoxesResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeMapBoundingBoxesResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeMapBoundingBoxesResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeMapBoundingBoxesResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeMapBoundingBoxesResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeMapBoundingBoxesResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeMapBoundingBoxesResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeMapBoundingBoxesResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeMapProperties value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeMapProperties {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        if let Some(ref is_only_walking) = self.is_only_walking {
            params.push("is_only_walking".to_string());
            params.push(is_only_walking.to_string());
        }

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeMapProperties value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeMapProperties {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub is_only_walking: Vec<bool>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeMapProperties".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "is_only_walking" => intermediate_rep.is_only_walking.push(<bool as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeMapProperties".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeMapProperties {
            is_only_walking: intermediate_rep.is_only_walking.into_iter().next(),
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeMapProperties> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeMapProperties>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeMapProperties>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeMapProperties - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeMapProperties> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeMapProperties as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeMapProperties - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeMapResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeMapResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());

        // Skipping shapes in query parameter serialization

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeMapResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeMapResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub shapes: Vec<Vec<models::ResponseShape>>,
            pub properties: Vec<models::ResponseTimeMapProperties>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeMapResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "shapes" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeMapResult".to_string()),
                    "properties" => intermediate_rep.properties.push(<models::ResponseTimeMapProperties as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeMapResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeMapResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseTimeMapResult".to_string())?,
            shapes: intermediate_rep.shapes.into_iter().next().ok_or("shapes missing in ResponseTimeMapResult".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseTimeMapResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeMapResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeMapResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeMapResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeMapResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeMapResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeMapResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeMapResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeMapWkt value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeMapWkt {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];
        // Skipping results in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeMapWkt value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeMapWkt {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub results: Vec<Vec<models::ResponseTimeMapWktResult>>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeMapWkt".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "results" => return std::result::Result::Err("Parsing a container in this style is not supported in ResponseTimeMapWkt".to_string()),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeMapWkt".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeMapWkt {
            results: intermediate_rep.results.into_iter().next().ok_or("results missing in ResponseTimeMapWkt".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeMapWkt> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeMapWkt>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeMapWkt>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeMapWkt - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeMapWkt> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeMapWkt as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeMapWkt - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
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

/// Converts the ResponseTimeMapWktResult value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTimeMapWktResult {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("search_id".to_string());
        params.push(self.search_id.to_string());


        params.push("shape".to_string());
        params.push(self.shape.to_string());

        // Skipping properties in query parameter serialization

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTimeMapWktResult value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTimeMapWktResult {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub search_id: Vec<String>,
            pub shape: Vec<String>,
            pub properties: Vec<models::ResponseTimeMapProperties>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTimeMapWktResult".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "search_id" => intermediate_rep.search_id.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "shape" => intermediate_rep.shape.push(<String as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "properties" => intermediate_rep.properties.push(<models::ResponseTimeMapProperties as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTimeMapWktResult".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTimeMapWktResult {
            search_id: intermediate_rep.search_id.into_iter().next().ok_or("search_id missing in ResponseTimeMapWktResult".to_string())?,
            shape: intermediate_rep.shape.into_iter().next().ok_or("shape missing in ResponseTimeMapWktResult".to_string())?,
            properties: intermediate_rep.properties.into_iter().next().ok_or("properties missing in ResponseTimeMapWktResult".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTimeMapWktResult> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTimeMapWktResult>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTimeMapWktResult>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTimeMapWktResult - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTimeMapWktResult> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTimeMapWktResult as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTimeMapWktResult - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


/// Enumeration of values.
/// Since this enum's variants do not hold data, we can easily define them them as `#[repr(C)]`
/// which helps with FFI.
#[allow(non_camel_case_types)]
#[repr(C)]
#[derive(Debug, Clone, Copy, PartialEq, Eq, PartialOrd, Ord, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk_enum_derive::LabelledGenericEnum))]
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

impl std::fmt::Display for ResponseTransportationMode {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
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

impl std::str::FromStr for ResponseTransportationMode {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        match s {
            "car" => std::result::Result::Ok(ResponseTransportationMode::CAR),
            "parking" => std::result::Result::Ok(ResponseTransportationMode::PARKING),
            "boarding" => std::result::Result::Ok(ResponseTransportationMode::BOARDING),
            "walk" => std::result::Result::Ok(ResponseTransportationMode::WALK),
            "bike" => std::result::Result::Ok(ResponseTransportationMode::BIKE),
            "train" => std::result::Result::Ok(ResponseTransportationMode::TRAIN),
            "rail_national" => std::result::Result::Ok(ResponseTransportationMode::RAIL_NATIONAL),
            "rail_overground" => std::result::Result::Ok(ResponseTransportationMode::RAIL_OVERGROUND),
            "rail_underground" => std::result::Result::Ok(ResponseTransportationMode::RAIL_UNDERGROUND),
            "rail_dlr" => std::result::Result::Ok(ResponseTransportationMode::RAIL_DLR),
            "bus" => std::result::Result::Ok(ResponseTransportationMode::BUS),
            "cable_car" => std::result::Result::Ok(ResponseTransportationMode::CABLE_CAR),
            "plane" => std::result::Result::Ok(ResponseTransportationMode::PLANE),
            "ferry" => std::result::Result::Ok(ResponseTransportationMode::FERRY),
            "coach" => std::result::Result::Ok(ResponseTransportationMode::COACH),
            _ => std::result::Result::Err(format!("Value not valid: {}", s)),
        }
    }
}

#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseTravelTime(i32);

impl std::convert::From<i32> for ResponseTravelTime {
    fn from(x: i32) -> Self {
        ResponseTravelTime(x)
    }
}

impl std::convert::From<ResponseTravelTime> for i32 {
    fn from(x: ResponseTravelTime) -> Self {
        x.0
    }
}

impl std::ops::Deref for ResponseTravelTime {
    type Target = i32;
    fn deref(&self) -> &i32 {
        &self.0
    }
}

impl std::ops::DerefMut for ResponseTravelTime {
    fn deref_mut(&mut self) -> &mut i32 {
        &mut self.0
    }
}


#[derive(Debug, Clone, PartialEq, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseTravelTimeStatistics {
    #[serde(rename = "min")]
    pub min: isize,

    #[serde(rename = "max")]
    pub max: isize,

    #[serde(rename = "mean")]
    pub mean: isize,

    #[serde(rename = "median")]
    pub median: isize,

}

impl ResponseTravelTimeStatistics {
    pub fn new(min: isize, max: isize, mean: isize, median: isize, ) -> ResponseTravelTimeStatistics {
        ResponseTravelTimeStatistics {
            min: min,
            max: max,
            mean: mean,
            median: median,
        }
    }
}

/// Converts the ResponseTravelTimeStatistics value to the Query Parameters representation (style=form, explode=false)
/// specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde serializer
impl std::string::ToString for ResponseTravelTimeStatistics {
    fn to_string(&self) -> String {
        let mut params: Vec<String> = vec![];

        params.push("min".to_string());
        params.push(self.min.to_string());


        params.push("max".to_string());
        params.push(self.max.to_string());


        params.push("mean".to_string());
        params.push(self.mean.to_string());


        params.push("median".to_string());
        params.push(self.median.to_string());

        params.join(",").to_string()
    }
}

/// Converts Query Parameters representation (style=form, explode=false) to a ResponseTravelTimeStatistics value
/// as specified in https://swagger.io/docs/specification/serialization/
/// Should be implemented in a serde deserializer
impl std::str::FromStr for ResponseTravelTimeStatistics {
    type Err = String;

    fn from_str(s: &str) -> std::result::Result<Self, Self::Err> {
        #[derive(Default)]
        // An intermediate representation of the struct to use for parsing.
        struct IntermediateRep {
            pub min: Vec<isize>,
            pub max: Vec<isize>,
            pub mean: Vec<isize>,
            pub median: Vec<isize>,
        }

        let mut intermediate_rep = IntermediateRep::default();

        // Parse into intermediate representation
        let mut string_iter = s.split(',').into_iter();
        let mut key_result = string_iter.next();

        while key_result.is_some() {
            let val = match string_iter.next() {
                Some(x) => x,
                None => return std::result::Result::Err("Missing value while parsing ResponseTravelTimeStatistics".to_string())
            };

            if let Some(key) = key_result {
                match key {
                    "min" => intermediate_rep.min.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "max" => intermediate_rep.max.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "mean" => intermediate_rep.mean.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    "median" => intermediate_rep.median.push(<isize as std::str::FromStr>::from_str(val).map_err(|x| format!("{}", x))?),
                    _ => return std::result::Result::Err("Unexpected key while parsing ResponseTravelTimeStatistics".to_string())
                }
            }

            // Get the next key
            key_result = string_iter.next();
        }

        // Use the intermediate representation to return the struct
        std::result::Result::Ok(ResponseTravelTimeStatistics {
            min: intermediate_rep.min.into_iter().next().ok_or("min missing in ResponseTravelTimeStatistics".to_string())?,
            max: intermediate_rep.max.into_iter().next().ok_or("max missing in ResponseTravelTimeStatistics".to_string())?,
            mean: intermediate_rep.mean.into_iter().next().ok_or("mean missing in ResponseTravelTimeStatistics".to_string())?,
            median: intermediate_rep.median.into_iter().next().ok_or("median missing in ResponseTravelTimeStatistics".to_string())?,
        })
    }
}

// Methods for converting between header::IntoHeaderValue<ResponseTravelTimeStatistics> and hyper::header::HeaderValue

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<header::IntoHeaderValue<ResponseTravelTimeStatistics>> for hyper::header::HeaderValue {
    type Error = String;

    fn try_from(hdr_value: header::IntoHeaderValue<ResponseTravelTimeStatistics>) -> std::result::Result<Self, Self::Error> {
        let hdr_value = hdr_value.to_string();
        match hyper::header::HeaderValue::from_str(&hdr_value) {
             std::result::Result::Ok(value) => std::result::Result::Ok(value),
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Invalid header value for ResponseTravelTimeStatistics - value: {} is invalid {}",
                     hdr_value, e))
        }
    }
}

#[cfg(any(feature = "client", feature = "server"))]
impl std::convert::TryFrom<hyper::header::HeaderValue> for header::IntoHeaderValue<ResponseTravelTimeStatistics> {
    type Error = String;

    fn try_from(hdr_value: hyper::header::HeaderValue) -> std::result::Result<Self, Self::Error> {
        match hdr_value.to_str() {
             std::result::Result::Ok(value) => {
                    match <ResponseTravelTimeStatistics as std::str::FromStr>::from_str(value) {
                        std::result::Result::Ok(value) => std::result::Result::Ok(header::IntoHeaderValue(value)),
                        std::result::Result::Err(err) => std::result::Result::Err(
                            format!("Unable to convert header value '{}' into ResponseTravelTimeStatistics - {}",
                                value, err))
                    }
             },
             std::result::Result::Err(e) => std::result::Result::Err(
                 format!("Unable to convert header: {:?} to string: {}",
                     hdr_value, e))
        }
    }
}


#[derive(Debug, Clone, PartialEq, PartialOrd, serde::Serialize, serde::Deserialize)]
#[cfg_attr(feature = "conversion", derive(frunk::LabelledGeneric))]
pub struct ResponseWktShape(String);

impl std::convert::From<String> for ResponseWktShape {
    fn from(x: String) -> Self {
        ResponseWktShape(x)
    }
}

impl std::string::ToString for ResponseWktShape {
    fn to_string(&self) -> String {
       self.0.to_string()
    }
}

impl std::str::FromStr for ResponseWktShape {
    type Err = std::string::ParseError;
    fn from_str(x: &str) -> std::result::Result<Self, Self::Err> {
        std::result::Result::Ok(ResponseWktShape(x.to_string()))
    }
}

impl std::convert::From<ResponseWktShape> for String {
    fn from(x: ResponseWktShape) -> Self {
        x.0
    }
}

impl std::ops::Deref for ResponseWktShape {
    type Target = String;
    fn deref(&self) -> &String {
        &self.0
    }
}

impl std::ops::DerefMut for ResponseWktShape {
    fn deref_mut(&mut self) -> &mut String {
        &mut self.0
    }
}

