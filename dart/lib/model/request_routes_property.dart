part of openapi.api;

class RequestRoutesProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestRoutesProperty._internal(this.value);

  static const RequestRoutesProperty travelTime_ = const RequestRoutesProperty._internal("travel_time");
  static const RequestRoutesProperty distance_ = const RequestRoutesProperty._internal("distance");
  static const RequestRoutesProperty fares_ = const RequestRoutesProperty._internal("fares");
  static const RequestRoutesProperty route_ = const RequestRoutesProperty._internal("route");

  static RequestRoutesProperty fromJson(String value) {
    return new RequestRoutesPropertyTypeTransformer().decode(value);
  }
}

class RequestRoutesPropertyTypeTransformer {

  dynamic encode(RequestRoutesProperty data) {
    return data.value;
  }

  RequestRoutesProperty decode(dynamic data) {
    switch (data) {
      case "travel_time": return RequestRoutesProperty.travelTime_;
      case "distance": return RequestRoutesProperty.distance_;
      case "fares": return RequestRoutesProperty.fares_;
      case "route": return RequestRoutesProperty.route_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

