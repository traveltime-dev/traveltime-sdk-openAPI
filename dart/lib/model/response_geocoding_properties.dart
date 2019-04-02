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
    name = json['name'];
    label = json['label'];
    score = json['score'];
    houseNumber = json['house_number'];
    street = json['street'];
    region = json['region'];
    regionCode = json['region_code'];
    neighbourhood = json['neighbourhood'];
    county = json['county'];
    macroregion = json['macroregion'];
    city = json['city'];
    country = json['country'];
    countryCode = json['country_code'];
    continent = json['continent'];
    postcode = json['postcode'];
    features = new ResponseMapInfoFeatures.fromJson(json['features']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'label': label,
      'score': score,
      'house_number': houseNumber,
      'street': street,
      'region': region,
      'region_code': regionCode,
      'neighbourhood': neighbourhood,
      'county': county,
      'macroregion': macroregion,
      'city': city,
      'country': country,
      'country_code': countryCode,
      'continent': continent,
      'postcode': postcode,
      'features': features
    };
  }

  static List<ResponseGeocodingProperties> listFromJson(List<dynamic> json) {
    return json == null ? new List<ResponseGeocodingProperties>() : json.map((value) => new ResponseGeocodingProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingProperties> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, ResponseGeocodingProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, dynamic value) => map[key] = new ResponseGeocodingProperties.fromJson(value));
    }
    return map;
  }
}

