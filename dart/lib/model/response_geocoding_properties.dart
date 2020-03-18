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
    score = (json['score'] == null) ?
      null :
      json['score'].toDouble();
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
    features = (json['features'] == null) ?
      null :
      ResponseMapInfoFeatures.fromJson(json['features']);
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
    return json == null ? List<ResponseGeocodingProperties>() : json.map((value) => ResponseGeocodingProperties.fromJson(value)).toList();
  }

  static Map<String, ResponseGeocodingProperties> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ResponseGeocodingProperties>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ResponseGeocodingProperties.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ResponseGeocodingProperties-objects as value to a dart map
  static Map<String, List<ResponseGeocodingProperties>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ResponseGeocodingProperties>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ResponseGeocodingProperties.listFromJson(value);
       });
     }
     return map;
  }
}

