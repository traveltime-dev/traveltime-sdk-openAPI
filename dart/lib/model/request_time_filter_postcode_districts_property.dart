part of openapi.api;

class RequestTimeFilterPostcodeDistrictsProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterPostcodeDistrictsProperty._internal(this.value);

  static const RequestTimeFilterPostcodeDistrictsProperty travelTimeReachable_ = const RequestTimeFilterPostcodeDistrictsProperty._internal("travel_time_reachable");
  static const RequestTimeFilterPostcodeDistrictsProperty travelTimeAll_ = const RequestTimeFilterPostcodeDistrictsProperty._internal("travel_time_all");
  static const RequestTimeFilterPostcodeDistrictsProperty coverage_ = const RequestTimeFilterPostcodeDistrictsProperty._internal("coverage");

  static RequestTimeFilterPostcodeDistrictsProperty fromJson(String value) {
    return new RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer().decode(value);
  }
}

class RequestTimeFilterPostcodeDistrictsPropertyTypeTransformer {

  dynamic encode(RequestTimeFilterPostcodeDistrictsProperty data) {
    return data.value;
  }

  RequestTimeFilterPostcodeDistrictsProperty decode(dynamic data) {
    switch (data) {
      case "travel_time_reachable": return RequestTimeFilterPostcodeDistrictsProperty.travelTimeReachable_;
      case "travel_time_all": return RequestTimeFilterPostcodeDistrictsProperty.travelTimeAll_;
      case "coverage": return RequestTimeFilterPostcodeDistrictsProperty.coverage_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

