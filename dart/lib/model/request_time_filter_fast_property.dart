part of openapi.api;

class RequestTimeFilterFastProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeFilterFastProperty._internal(this.value);

  static const RequestTimeFilterFastProperty travelTime_ = const RequestTimeFilterFastProperty._internal("travel_time");
  static const RequestTimeFilterFastProperty fares_ = const RequestTimeFilterFastProperty._internal("fares");

  static RequestTimeFilterFastProperty fromJson(String value) {
    return new RequestTimeFilterFastPropertyTypeTransformer().decode(value);
  }
}

class RequestTimeFilterFastPropertyTypeTransformer {

  dynamic encode(RequestTimeFilterFastProperty data) {
    return data.value;
  }

  RequestTimeFilterFastProperty decode(dynamic data) {
    switch (data) {
      case "travel_time": return RequestTimeFilterFastProperty.travelTime_;
      case "fares": return RequestTimeFilterFastProperty.fares_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

