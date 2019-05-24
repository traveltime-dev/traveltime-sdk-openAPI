part of openapi.api;

class ResponseGeocodingProperties {
  
  String name = null;
  
  String label = null;
  
  double score = null;
  
  String houseNumber = null;
  
  String street = null;
  
  String region = null;
  
  String regionCode = null;
  
  String neighbourhood = null;
  
  String county = null;
  
  String macroregion = null;
  
  String city = null;
  
  String country = null;
  
  String countryCode = null;
  
  String continent = null;
  
  String postcode = null;
  
  ResponseMapInfoFeatures features = null;
  ResponseGeocodingProperties();

  @override
  String toString() {
    return 'ResponseGeocodingProperties[name=$name, label=$label, score=$score, houseNumber=$houseNumber, street=$street, region=$region, regionCode=$regionCode, neighbourhood=$neighbourhood, county=$county, macroregion=$macroregion, city=$city, country=$country, countryCode=$countryCode, continent=$continent, postcode=$postcode, features=$features, ]';
  }

  ResponseGeocodingProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['label'] == null) {
      label = null;
    } else {
          label = json['label'];
    }
    if (json['score'] == null) {
      score = null;
    } else {
          score = json['score'];
    }
    if (json['house_number'] == null) {
      houseNumber = null;
    } else {
          houseNumber = json['house_number'];
    }
    if (json['street'] == null) {
      street = null;
    } else {
          street = json['street'];
    }
    if (json['region'] == null) {
      region = null;
    } else {
          region = json['region'];
    }
    if (json['region_code'] == null) {
      regionCode = null;
    } else {
          regionCode = json['region_code'];
    }
    if (json['neighbourhood'] == null) {
      neighbourhood = null;
    } else {
          neighbourhood = json['neighbourhood'];
    }
    if (json['county'] == null) {
      county = null;
    } else {
          county = json['county'];
    }
    if (json['macroregion'] == null) {
      macroregion = null;
    } else {
          macroregion = json['macroregion'];
    }
    if (json['city'] == null) {
      city = null;
    } else {
          city = json['city'];
    }
    if (json['country'] == null) {
      country = null;
    } else {
          country = json['country'];
    }
    if (json['country_code'] == null) {
      countryCode = null;
    } else {
          countryCode = json['country_code'];
    }
    if (json['continent'] == null) {
      continent = null;
    } else {
          continent = json['continent'];
    }
    if (json['postcode'] == null) {
      postcode = null;
    } else {
          postcode = json['postcode'];
    }
    if (json['features'] == null) {
      features = null;
    } else {
      features = new ResponseMapInfoFeatures.fromJson(json['features']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (label != null)
      json['label'] = label;
    if (score != null)
      json['score'] = score;
    if (houseNumber != null)
      json['house_number'] = houseNumber;
    if (street != null)
      json['street'] = street;
    if (region != null)
      json['region'] = region;
    if (regionCode != null)
      json['region_code'] = regionCode;
    if (neighbourhood != null)
      json['neighbourhood'] = neighbourhood;
    if (county != null)
      json['county'] = county;
    if (macroregion != null)
      json['macroregion'] = macroregion;
    if (city != null)
      json['city'] = city;
    if (country != null)
      json['country'] = country;
    if (countryCode != null)
      json['country_code'] = countryCode;
    if (continent != null)
      json['continent'] = continent;
    if (postcode != null)
      json['postcode'] = postcode;
    if (features != null)
      json['features'] = features;
    return json;
  }

  static List<ResponseGeocodingProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseGeocodingProperties>() : json.map((value) => new ResponseGeocodingProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseGeocodingProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseGeocodingProperties.fromJson(value));
    }
    return map;
  }
}

