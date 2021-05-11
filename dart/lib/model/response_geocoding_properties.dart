//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResponseGeocodingProperties {
  /// Returns a new [ResponseGeocodingProperties] instance.
  ResponseGeocodingProperties({
    @required this.name,
    @required this.label,
    this.score,
    this.houseNumber,
    this.street,
    this.region,
    this.regionCode,
    this.neighbourhood,
    this.county,
    this.macroregion,
    this.city,
    this.country,
    this.countryCode,
    this.continent,
    this.postcode,
    this.features,
  });

  String name;

  String label;

  double score;

  String houseNumber;

  String street;

  String region;

  String regionCode;

  String neighbourhood;

  String county;

  String macroregion;

  String city;

  String country;

  String countryCode;

  String continent;

  String postcode;

  ResponseMapInfoFeatures features;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResponseGeocodingProperties &&
     other.name == name &&
     other.label == label &&
     other.score == score &&
     other.houseNumber == houseNumber &&
     other.street == street &&
     other.region == region &&
     other.regionCode == regionCode &&
     other.neighbourhood == neighbourhood &&
     other.county == county &&
     other.macroregion == macroregion &&
     other.city == city &&
     other.country == country &&
     other.countryCode == countryCode &&
     other.continent == continent &&
     other.postcode == postcode &&
     other.features == features;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (label == null ? 0 : label.hashCode) +
    (score == null ? 0 : score.hashCode) +
    (houseNumber == null ? 0 : houseNumber.hashCode) +
    (street == null ? 0 : street.hashCode) +
    (region == null ? 0 : region.hashCode) +
    (regionCode == null ? 0 : regionCode.hashCode) +
    (neighbourhood == null ? 0 : neighbourhood.hashCode) +
    (county == null ? 0 : county.hashCode) +
    (macroregion == null ? 0 : macroregion.hashCode) +
    (city == null ? 0 : city.hashCode) +
    (country == null ? 0 : country.hashCode) +
    (countryCode == null ? 0 : countryCode.hashCode) +
    (continent == null ? 0 : continent.hashCode) +
    (postcode == null ? 0 : postcode.hashCode) +
    (features == null ? 0 : features.hashCode);

  @override
  String toString() => 'ResponseGeocodingProperties[name=$name, label=$label, score=$score, houseNumber=$houseNumber, street=$street, region=$region, regionCode=$regionCode, neighbourhood=$neighbourhood, county=$county, macroregion=$macroregion, city=$city, country=$country, countryCode=$countryCode, continent=$continent, postcode=$postcode, features=$features]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = name;
      json[r'label'] = label;
    if (score != null) {
      json[r'score'] = score;
    }
    if (houseNumber != null) {
      json[r'house_number'] = houseNumber;
    }
    if (street != null) {
      json[r'street'] = street;
    }
    if (region != null) {
      json[r'region'] = region;
    }
    if (regionCode != null) {
      json[r'region_code'] = regionCode;
    }
    if (neighbourhood != null) {
      json[r'neighbourhood'] = neighbourhood;
    }
    if (county != null) {
      json[r'county'] = county;
    }
    if (macroregion != null) {
      json[r'macroregion'] = macroregion;
    }
    if (city != null) {
      json[r'city'] = city;
    }
    if (country != null) {
      json[r'country'] = country;
    }
    if (countryCode != null) {
      json[r'country_code'] = countryCode;
    }
    if (continent != null) {
      json[r'continent'] = continent;
    }
    if (postcode != null) {
      json[r'postcode'] = postcode;
    }
    if (features != null) {
      json[r'features'] = features;
    }
    return json;
  }

  /// Returns a new [ResponseGeocodingProperties] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ResponseGeocodingProperties fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ResponseGeocodingProperties(
        name: json[r'name'],
        label: json[r'label'],
        score: json[r'score'],
        houseNumber: json[r'house_number'],
        street: json[r'street'],
        region: json[r'region'],
        regionCode: json[r'region_code'],
        neighbourhood: json[r'neighbourhood'],
        county: json[r'county'],
        macroregion: json[r'macroregion'],
        city: json[r'city'],
        country: json[r'country'],
        countryCode: json[r'country_code'],
        continent: json[r'continent'],
        postcode: json[r'postcode'],
        features: ResponseMapInfoFeatures.fromJson(json[r'features']),
    );

  static List<ResponseGeocodingProperties> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ResponseGeocodingProperties>[]
      : json.map((v) => ResponseGeocodingProperties.fromJson(v)).toList(growable: true == growable);

  static Map<String, ResponseGeocodingProperties> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ResponseGeocodingProperties>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ResponseGeocodingProperties.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ResponseGeocodingProperties-objects as value to a dart map
  static Map<String, List<ResponseGeocodingProperties>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ResponseGeocodingProperties>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ResponseGeocodingProperties.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

