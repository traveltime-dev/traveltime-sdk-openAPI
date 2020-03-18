part of openapi.api;

class RequestTimeMapProperty {
  /// The underlying value of this enum member.
  final String value;

  const RequestTimeMapProperty._internal(this.value);

  static const RequestTimeMapProperty isOnlyWalking_ = const RequestTimeMapProperty._internal("is_only_walking");

  static RequestTimeMapProperty fromJson(String value) {
    return new RequestTimeMapPropertyTypeTransformer().decode(value);
  }
}

class RequestTimeMapPropertyTypeTransformer {

  dynamic encode(RequestTimeMapProperty data) {
    return data.value;
  }

  RequestTimeMapProperty decode(dynamic data) {
    switch (data) {
      case "is_only_walking": return RequestTimeMapProperty.isOnlyWalking_;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

